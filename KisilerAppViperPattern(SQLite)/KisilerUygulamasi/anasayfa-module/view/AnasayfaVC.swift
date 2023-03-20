//
//  ViewController.swift
//  KisilerUygulamasi
//
//  Created by Oğuzhan Deniz on 02.03.2023.
//

import UIKit

class AnasayfaVC : UIViewController {
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var kisilerTableView: UITableView!
    
    var kisilerListe = [Kisiler]()
    var anasayfaPresenterNesnesi:ViewToPresenterAnasayfaProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        kisilerTableView.delegate = self
        kisilerTableView.dataSource = self
        
        veriTabaniKopyala()
        
        AnasayfaRouter.createModule(ref: self)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        anasayfaPresenterNesnesi?.kisileriYukle()
    }
    
    func veriTabaniKopyala() {
        let bundleYolu = Bundle.main.path(forResource: "rehber", ofType: ".sqlite")
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let fileManager = FileManager.default
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("rehber.sqlite")
        if fileManager.fileExists(atPath: kopyalanacakYer.path) {
            print("Veritabanı zaten var")
        }
        else {
            do {
                try fileManager.copyItem(atPath: bundleYolu!, toPath: kopyalanacakYer.path)
            }
            catch { }
        }
    }
}


extension AnasayfaVC : PresenterToViewAnasayfaProtocol {
    func vieweVeriGonder(kisilerListesi: Array<Kisiler>) {
        self.kisilerListe = kisilerListesi
        self.kisilerTableView.reloadData()
    }
}

extension AnasayfaVC : UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        anasayfaPresenterNesnesi?.ara(aramaKelimesi: searchText)
    }
}


extension AnasayfaVC : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kisilerListe.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let kisi = kisilerListe[indexPath.row]
        let hucre = tableView.dequeueReusableCell(withIdentifier: "kisilerHucre", for: indexPath) as! TableViewHucre
        hucre.kisiBilgiLabel.text = "\(kisi.kisi_ad!) - \(kisi.kisi_tel!)"
        return hucre
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let kisi = kisilerListe[indexPath.row]
        performSegue(withIdentifier: "toDetay", sender: kisi)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            let kisi = sender as? Kisiler
            let gidilecekVC = segue.destination as! KisiDetayVC
            gidilecekVC.kisi = kisi
        }
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let kisi = kisilerListe[indexPath.row]
        let silAction = UIContextualAction(style: .destructive, title: "Sil"){(contextualAction,view,bool) in
            let alert = UIAlertController(title: "Silme İşlemi", message: "\(kisi.kisi_ad!) silinsin mi?", preferredStyle: .alert)
            let iptalAction = UIAlertAction(title: "İptal", style: .cancel){ action in}
            let evetAction = UIAlertAction(title: "Evet", style: .destructive){ action in
                self.anasayfaPresenterNesnesi?.sil(kisi_id: kisi.kisi_id!)
            }
            alert.addAction(iptalAction)
            alert.addAction(evetAction)
            self.present(alert, animated: true)
        }
        
        return UISwipeActionsConfiguration(actions: [silAction])
    }
}

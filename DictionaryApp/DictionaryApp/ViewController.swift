//
//  ViewController.swift
//  DictionaryApp
//
//  Created by Oğuzhan Deniz on 9.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var kelimeTableView: UITableView!
    
    
    var kelimeListesi = [Kelimeler]()
       
       override func viewDidLoad() {
           super.viewDidLoad()
           
           veritabaniKopyala()
           
           
           kelimeTableView.delegate = self
           kelimeTableView.dataSource = self
    
           searchBar.delegate = self
           
           kelimeListesi = Kelimelerdao().tumKisilerAl()
           
       }
       
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           let indeks = sender as? Int
           
           let gidilecekVC = segue.destination as! KelimeDetayViewController
           
           gidilecekVC.kelime = kelimeListesi[indeks!]
           
       }
       
       func veritabaniKopyala(){
           
           let bundleYolu = Bundle.main.path(forResource: "sozluk", ofType: ".sqlite")
           
           let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
           
           let fileManager = FileManager.default
           
           let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("sozluk.sqlite")
           
           if fileManager.fileExists(atPath: kopyalanacakYer.path) {
               print("Veritabanı zaten var.Kopyalamaya gerek yok")
           }else{
               do {
                   
                   try fileManager.copyItem(atPath: bundleYolu!, toPath: kopyalanacakYer.path)
                   
               }catch{
                   print(error)
               }
           }
       }


   }

extension ViewController:UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kelimeListesi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let kelime = kelimeListesi[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "kelimeHucre", for: indexPath) as! KelimeHucreTableViewCell
        
        cell.ingilizceLabel.text = kelime.ingilizce
        cell.turkceLabel.text = kelime.turkce
        
        return cell
    
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.performSegue(withIdentifier: "toKelimeDetay", sender: indexPath.row)
        
    }
    
    
}

extension ViewController:UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Arama Sonucu : \(searchText)")
        
        kelimeListesi = Kelimelerdao().aramaYap(ingilizce: searchText)
        
        kelimeTableView.reloadData()
        
    }
}

//
//  ViewController.swift
//  AlomofireKurulumu
//
//  Created by Oğuzhan Deniz on 20.12.2022.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //kisiEkle()
        //kisiSil()
        //kisiGuncelle()
        //tumKisiler()
        aramaYap()
    }
    
    func kisiEkle(){
        let parametreler:Parameters = ["kisi_ad":"TESTALAMOFIREXXX","kisi_tel":"999999XXX"]
        Alamofire.request("http://kasimadalan.pe.hu/kisiler/insert_kisiler.php",method: .post,parameters: parametreler).responseJSON { response in
            
            if let data  = response.data {
                do {
                    if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String:Any] {
                        print(json)
                    }
                }catch{
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    func kisiSil(){
        let parametreler:Parameters = ["kisi_id":123]
        Alamofire.request("http://kasimadalan.pe.hu/kisiler/delete_kisiler.php",method: .post,parameters: parametreler).responseJSON { response in
         
            if let data  = response.data {
                do {
                    if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String:Any] {
                        print(json)
                    }
                }catch{
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    func kisiGuncelle(){
        let parametreler:Parameters = ["kisi_id":121,"kisi_ad":"XXXXXXX","kisi_tel":"X8X8X8"]
        Alamofire.request("http://kasimadalan.pe.hu/kisiler/update_kisiler.php",method: .post,parameters: parametreler).responseJSON { response in
            
            if let data  = response.data {
                do {
                    if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String:Any] {
                        print(json)
                    }
                }catch{
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    func tumKisiler(){
        Alamofire.request("http://kasimadalan.pe.hu/kisiler/tum_kisiler.php",method: .get).responseJSON { response in
            
            if let data  = response.data {
                do {
                    let cevap = try JSONDecoder().decode(KisiCevap.self, from: data)
                    if let kisiListesi = cevap.kisiler {
                        for kisi in kisiListesi {
                            print("Kisi id  : \(kisi.kisi_id!)")
                            print("Kisi ad  : \(kisi.kisi_ad!)")
                            print("Kisi tel : \(kisi.kisi_tel!)")
                        }
                    }
                }catch{
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    
    func aramaYap() {
        let parametreler:Parameters = ["kisi_ad":"X"]
        Alamofire.request("http://kasimadalan.pe.hu/kisiler/tum_kisiler_arama.php",method: .post,parameters: parametreler).responseJSON { response in
            
            if let data  = response.data {
                do {
                    let cevap = try JSONDecoder().decode(KisiCevap.self, from: data)
                    if let kisiListesi = cevap.kisiler {
                        for kisi in kisiListesi {
                            print("Kisi id  : \(kisi.kisi_id!)")
                            print("Kisi ad  : \(kisi.kisi_ad!)")
                            print("Kisi tel : \(kisi.kisi_tel!)")
                        }
                    }
                }catch{
                    print(error.localizedDescription)
                }
            }
        }
    }


}


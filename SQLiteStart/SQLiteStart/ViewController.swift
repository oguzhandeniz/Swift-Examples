//
//  ViewController.swift
//  SQLiteStart
//
//  Created by Oğuzhan Deniz on 8.12.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        veritabaniKopyala()
        
        //Kisilerdao().kisiEkle(kisi_ad: "Zeynep", kisi_yas: 22)
        
        //Kisilerdao().kisiSil(kisi_id: 2)
        
        //Kisilerdao().kisiGuncelle(kisi_id: 3, kisi_ad: "Yeni Ece", kisi_yas: 99)
        
        //let sonuc = Kisilerdao().kisiKontrol(kisi_ad:"x")
        
        //print("Sonuç : \(sonuc)")
        
        
        
        let kisi = Kisilerdao().kisiGetir(kisi_id: 1)
        
        print("Gelen kişi : \(kisi.kisi_ad!)")
        
        
        //let gelenliste =  Kisilerdao().aramaYap(kisi_ad:"et")
        
        //let gelenliste =  Kisilerdao().tumKisilerAl()
        
        //let gelenliste =  Kisilerdao().tumKisilerAlLIMIT()
        
        let gelenliste =  Kisilerdao().rasgele2kisiAl()
        
        for k in gelenliste {
            print("ID: \(k.kisi_id!) - AD: \(k.kisi_ad!) - YAS: \(k.kisi_yas!)")
        }
        
        
    }
    
    func veritabaniKopyala(){
        
        let bundleYolu = Bundle.main.path(forResource: "kisilergiris", ofType: ".sqlite")
        
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        
        let fileManager = FileManager.default
        
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("kisilergiris.sqlite")
        
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


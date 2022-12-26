//
//  ViewController.swift
//  Firebase
//
//  Created by Oğuzhan Deniz on 20.12.2022.
//

import UIKit
import FirebaseCore
import FirebaseDatabase

class ViewController: UIViewController {

    var ref: DatabaseReference?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        ref = Database.database().reference()
        
        //kisiEkle()
        //kisiSil()
        //kisiGuncelle()
        tumKisiler()
        //kisiEqualSorgu()
        //kisiLimitSorgu()
        //kisiDegerAraligiSorgu()
        
    }
    
    func kisiEkle(){
        
        let yeniKisi = Kisiler(kisi_ad:"Talat",kisi_yas:14)
        
        let dict:[String:Any] = ["kisi_ad":yeniKisi.kisi_ad!,"kisi_yas":yeniKisi.kisi_yas!]
        
        let newRef = ref?.child("kisiler").childByAutoId()
        
        newRef?.setValue(dict)
        
    }
    
    func kisiSil(){
        
        ref?.child("kisiler").child("-LlXGVIsFJBLvuDgxm1k").removeValue()
    
    }

    func kisiGuncelle(){
        
        let dict:[String:Any] = ["kisi_ad":"Yeni Ahmet","kisi_yas":99]
        
        ref?.child("kisiler").child("-LlXGNMrtRTUHVsCx1mw").updateChildValues(dict)
        
    }
    
    func tumKisiler(){
        
        ref?.child("kisiler").observe(.value, with: { snapshot in
            
            if let gelenVeriButunu = snapshot.value as? [String:AnyObject] {
                
                
                for gelenSatirVerisi in gelenVeriButunu {
                    
                    if let sozluk = gelenSatirVerisi.value as? NSDictionary {
                        
                        let key = gelenSatirVerisi.key
                        let kisi_ad = sozluk["kisi_ad"] as? String ?? ""
                        let kisi_yas = sozluk["kisi_yas"] as? Int ?? 0
                        
                        print("Key : \(key)")
                        print("Ad  : \(kisi_ad)")
                        print("Yas : \(kisi_yas)")
                        print("*************")
                        
                    }
    
                }
                
            }

        })
        
        
    }
    
    
    func kisiEqualSorgu(){
        
        let sorgu = ref?.child("kisiler").queryOrdered(byChild: "kisi_ad").queryEqual(toValue: "Talat")
        
        sorgu!.observe(.value, with: { snapshot in
            
            if let gelenVeriButunu = snapshot.value as? [String:AnyObject] {
                
                
                for gelenSatirVerisi in gelenVeriButunu {
                    
                    if let sozluk = gelenSatirVerisi.value as? NSDictionary {
                        
                        let key = gelenSatirVerisi.key
                        let kisi_ad = sozluk["kisi_ad"] as? String ?? ""
                        let kisi_yas = sozluk["kisi_yas"] as? Int ?? 0
                        
                        print("Key : \(key)")
                        print("Ad  : \(kisi_ad)")
                        print("Yas : \(kisi_yas)")
                        print("*************")
                        
                    }
                    
                }
                
            }
            
        })
        
        
    }
    
    func kisiLimitSorgu(){
        
        let sorgu = ref?.child("kisiler").queryLimited(toFirst: 1)
        
        sorgu!.observe(.value, with: { snapshot in
            
            if let gelenVeriButunu = snapshot.value as? [String:AnyObject] {
                
                
                for gelenSatirVerisi in gelenVeriButunu {
                    
                    if let sozluk = gelenSatirVerisi.value as? NSDictionary {
                        
                        let key = gelenSatirVerisi.key
                        let kisi_ad = sozluk["kisi_ad"] as? String ?? ""
                        let kisi_yas = sozluk["kisi_yas"] as? Int ?? 0
                        
                        print("Key : \(key)")
                        print("Ad  : \(kisi_ad)")
                        print("Yas : \(kisi_yas)")
                        print("*************")
                        
                    }
                    
                }
                
            }
            
        })
        
        
    }
    
    
    func kisiDegerAraligiSorgu(){
        
        let sorgu = ref?.child("kisiler").queryOrdered(byChild: "kisi_yas").queryStarting(atValue: 18).queryEnding(atValue: 90)
        
        sorgu!.observe(.value, with: { snapshot in
            
            if let gelenVeriButunu = snapshot.value as? [String:AnyObject] {
                
                
                for gelenSatirVerisi in gelenVeriButunu {
                    
                    if let sozluk = gelenSatirVerisi.value as? NSDictionary {
                        
                        let key = gelenSatirVerisi.key
                        let kisi_ad = sozluk["kisi_ad"] as? String ?? ""
                        let kisi_yas = sozluk["kisi_yas"] as? Int ?? 0
                        
                        print("Key : \(key)")
                        print("Ad  : \(kisi_ad)")
                        print("Yas : \(kisi_yas)")
                        print("*************")
                        
                    }
                    
                }
                
            }
            
        })
        
        
    }

}

//
//  ViewController.swift
//  CoreDataExample
//
//  Created by Oğuzhan Deniz on 6.12.2022.
//

import UIKit
import CoreData

//verilere erişim sağlamak için kullanacağımız değişken
let appDelegate = UIApplication.shared.delegate as! AppDelegate

class ViewController: UIViewController {

    let context = appDelegate.persistentContainer.viewContext
    var kisilerListe = [Kisiler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //veriKaydi()
        
        //veriOkuma()
      
        //veriSil()
        
        //veriGuncelle()
        
        //veriOkumaSiralama()
   
        veriOkumaFiltreleme()
    }

    
    func veriKaydi() {
        
        let kisi = Kisiler(context: context)
        kisi.kisi_ad = "Oğuzhan"
        kisi.kisi_yas = 24
        
        appDelegate.saveContext()
    }

    
    func veriOkuma() {
        
        do {
            kisilerListe = try context.fetch(Kisiler.fetchRequest())
            
        } catch {
            print("Veri Okurken Hata Oluştu.")
        }
        
        for k in kisilerListe {
            print("Ad: \(k.kisi_ad!) - Yaş : \(k.kisi_yas)")
        }
    }
    
    
    func veriSil() {
        
        let kisi = kisilerListe[4]
        
        context.delete(kisi)
        
        appDelegate.saveContext()
    }
    
    
    func veriGuncelle() {
        
        let kisi = kisilerListe[1]
        
        kisi.kisi_ad = "Mustafa"
        kisi.kisi_yas = 22
        
        appDelegate.saveContext()
    }
    
    
    func veriOkumaSiralama() {
        
        let fetchRequest: NSFetchRequest<Kisiler> = Kisiler.fetchRequest()
        let sort = NSSortDescriptor(key: #keyPath(Kisiler.kisi_yas), ascending: false) //true-> küçükten büyüğe - false-> büyükten küçüğe sıralar
        fetchRequest.sortDescriptors = [sort]
        
        
        do {
            kisilerListe = try context.fetch(fetchRequest)
            
        } catch {
            print("Veri Okurken Hata Oluştu.")
        }
        
        for k in kisilerListe {
            print("Ad: \(k.kisi_ad!) - Yaş : \(k.kisi_yas)")
        }
    }
    
    
    func veriOkumaFiltreleme() {
        
        let fetchRequest: NSFetchRequest<Kisiler> = Kisiler.fetchRequest()
        
        //fetchRequest.predicate = NSPredicate(format: "kisi_yas == %i", 18)            // @ -> String  -*-*-  i -> Int
        //fetchRequest.predicate = NSPredicate(format: "kisi_ad == %@", "Berkin")
        //fetchRequest.predicate = NSPredicate(format: "kisi_yas > %i", 18)
        //fetchRequest.predicate = NSPredicate(format: "kisi_ad CONTAINS %@", "a")
        fetchRequest.predicate = NSPredicate(format: "kisi_yas == %i  and kisi_ad == %@",  24 , "Oğuzhan")
        
        do {
            kisilerListe = try context.fetch(fetchRequest)
            
        } catch {
            print("Veri Okurken Hata Oluştu.")
        }
        
        for k in kisilerListe {
            print("Ad: \(k.kisi_ad!) - Yaş : \(k.kisi_yas)")
        }
    }
}


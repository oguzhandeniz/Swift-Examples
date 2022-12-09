//
//  KisiGuncelleViewController.swift
//  KisilerApp
//
//  Created by Oğuzhan Deniz on 6.12.2022.
//

import UIKit

class KisiGuncelleViewController: UIViewController {
    
    let context = appDelegate.persistentContainer.viewContext
    
    @IBOutlet weak var kisiAdTextfield: UITextField!
    
    @IBOutlet weak var kisiTelTextfield: UITextField!
    
    var kisi:Kisiler?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        if let k = kisi {
           kisiAdTextfield.text = k.kisi_ad
           kisiTelTextfield.text = k.kisi_tel
        }
       
    }

    @IBAction func guncelle(_ sender: Any) {
        
        if let k = kisi,let ad = kisiAdTextfield.text,let tel = kisiTelTextfield.text {
            
            k.kisi_ad = ad
            k.kisi_tel = tel
            
            appDelegate.saveContext()
            
        }
        
    }
}

//
//  ViewController.swift
//  DataTransferExample
//
//  Created by Oğuzhan Deniz on 23.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var girdiAlani: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func gonder(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfaB") as! ViewControllerB
        
        let gonderilecekMesaj = girdiAlani.text
        
        gidilecekViewController.mesaj = gonderilecekMesaj!
        
        let gidecekKisi = Kisiler(kisiID: 251, kisiAd: "Oguz")
        gidilecekViewController.kisi = gidecekKisi
        
       // self.present(gidilecekViewController, animated: true, completion: nil)
        // Modal Geçiş
        
        self.navigationController?.pushViewController(gidilecekViewController, animated: true)
        
    }
    
}


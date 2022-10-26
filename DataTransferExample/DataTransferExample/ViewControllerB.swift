//
//  ViewController2.swift
//  DataTransferExample
//
//  Created by Oğuzhan Deniz on 23.10.2022.
//

import UIKit

class ViewControllerB: UIViewController {

    @IBOutlet weak var etiket: UILabel!
    
    var mesaj:String?
    var kisi = Kisiler()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("Kisi ID : \(kisi.kisiID!) Kişi Ad : \(kisi.kisiAd!)")
        
       etiket.text = mesaj!
        
    }
}

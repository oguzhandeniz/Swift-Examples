//
//  NotEkleViewController.swift
//  NotUygulamasi
//
//  Created by Oğuzhan Deniz on 10.12.2022.
//

import UIKit

class NotEkleViewController: UIViewController {

    @IBOutlet weak var textFieldDersAdi: UITextField!
    @IBOutlet weak var textFieldNot1: UITextField!
    @IBOutlet weak var textFieldNot2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func notEkle(_ sender: Any) {
        
        if let ad = textFieldDersAdi.text ,let not1 = textFieldNot1.text ,let not2 = textFieldNot2.text {
                    
            if let n1 = Int(not1) , let n2 = Int(not2) {
                        
                Notlardao().notEkle(ders_adi: ad, not1: n1, not2: n2)
                 
            }
        }
    }
}

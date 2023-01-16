//
//  Not DetayViewController.swift
//  NotUygulamasi
//
//  Created by Oğuzhan Deniz on 10.12.2022.
//

import UIKit
import Firebase
import FirebaseDatabase
import FirebaseCore

class Not_DetayViewController: UIViewController {

    @IBOutlet weak var textFieldDersAdi: UITextField!
    @IBOutlet weak var textFieldNot1: UITextField!
    @IBOutlet weak var textFieldNot2: UITextField!
    
    var not:Notlar?
    var ref:DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref = Database.database().reference()
        
        if let n = not {
            textFieldDersAdi.text = n.ders_adi
            textFieldNot1.text = String(n.not1!)
            textFieldNot2.text = String(n.not2!)
        }
        
    }
    
    
    
    @IBAction func notSil(_ sender: Any) {
        if let n = not {
            notSil(not_id: n.not_id!)
        }
    }
    
    @IBAction func notGuncelle(_ sender: Any) {
        if let n = not, let ad = textFieldDersAdi.text , let not1 = textFieldNot1.text , let not2 = textFieldNot2.text {
            if let n1 = Int(not1), let n2 = Int(not2) {
                notGunceller(not_id:n.not_id!, ders_adi:ad, not1:n1, not2:n2)
            }
        }
    }
    
    func notSil(not_id:String) {
        ref.child("notlar").child(not_id).removeValue()
    }
    func notGunceller(not_id:String, ders_adi:String, not1:Int, not2:Int) {
        ref.child("notlar").child(not_id).updateChildValues(["ders_adi":ders_adi, "not1":not1 , "not2":not2])
    }
}

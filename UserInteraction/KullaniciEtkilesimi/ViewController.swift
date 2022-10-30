//
//  ViewController.swift
//  KullaniciEtkilesimi
//
//  Created by Oğuzhan Deniz on 28.10.2022.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var etiket: UILabel!
    @IBOutlet weak var etiket2: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func basitAlert(_ sender: Any)
    {
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj",    preferredStyle: .alert)
                                             
       
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel)
        {
            action in
            print("İptal Tıklandı")
        }
        alertController.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive)
        {
            action in
            print("Tamam Tıklandı")
        }
        alertController.addAction(tamamAction)
        self.present(alertController,animated: true)
    }
    
    
    
    @IBAction func ozelAlert(_ sender: Any)
    {
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj",  preferredStyle: .alert)
                                               
        alertController.addTextField
        { textfield in
            textfield.placeholder = "Email"
            textfield.keyboardType = .emailAddress
        }
        alertController.addTextField
        { textfield in
            textfield.placeholder = "Şifre"
            textfield.isSecureTextEntry = true
        }
       
        let kaydetAction = UIAlertAction(title: "Kaydet", style: .destructive)
        {
            action in
            print("Kaydet Tıklandı")
            
            let alinanEmail = (alertController.textFields![0] as UITextField).text!
            let alinanSifre = (alertController.textFields![1] as UITextField).text!
            
            self.etiket.text = "Email:\(alinanEmail)"
            self.etiket2.text = "Şifre:\(alinanSifre)"
        }
        alertController.addAction(kaydetAction)
        self.present(alertController,animated: true)
    }
    
    
    
    @IBAction func actionSheet(_ sender: Any)
    {
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj",    preferredStyle: .actionSheet)
                                             
       
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel)
        {
            action in
            print("Action Sheet : İptal Tıklandı")
        }
        alertController.addAction(iptalAction)
        


        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive)
        {
            action in
            print("Action Sheet : Tamam Tıklandı")
        }
        alertController.addAction(tamamAction)
        self.present(alertController,animated: true)
    }
}


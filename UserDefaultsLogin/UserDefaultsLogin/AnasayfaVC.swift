//
//  AnasayfaVC.swift
//  UserDefaultsLogin
//
//  Created by Oğuzhan Deniz on 29.11.2022.
//

import UIKit

class AnasayfaVC: UIViewController
{
    @IBOutlet weak var labelSonuc: UILabel!
    
    let d = UserDefaults.standard
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
        let ka = d.string(forKey: "kullaniciAdi") ?? "bos"
        
        labelSonuc.text = ka
    }
    
    @IBAction func cikisYap(_ sender: Any)
    {
        //kullanıcı çıkış butonuna tıkladığında verileri sıfırlamak için kullanıyoruz
        d.removeObject(forKey: "kullaniciAdi")
        d.removeObject(forKey: "sifre")
        
        exit(-1)
    }
}

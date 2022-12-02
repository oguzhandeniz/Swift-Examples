//
//  ViewController.swift
//  UserDefaultsLogin
//
//  Created by Oğuzhan Deniz on 29.11.2022.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var textfieldKullaniciAdi: UITextField!
    @IBOutlet weak var textfieldSifre: UITextField!
    
    let d = UserDefaults.standard
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let ka = d.string(forKey: "kullaniciAdi") ?? "bos"
        let s = d.string(forKey: "sifre") ?? "bos"
        
        //kullanıcının giriş yapıp yapmadığını kontrol ediyoruz
        if ka != "bos" && s != "bos"
        {
            performSegue(withIdentifier: "girisToanasayfa", sender: nil)
        }
        
    }
    
    @IBAction func girisYap(_ sender: Any)
    {
        if let ka = textfieldKullaniciAdi.text , let s = textfieldSifre.text
        {
            // kullanıcı adı ve şifre kontrolü yapıyoruz
            if ka == "admin" && s == "123456"
            {
                d.set(ka, forKey: "kullaniciAdi")
                d.set(s, forKey: "sifre")
                performSegue(withIdentifier: "girisToanasayfa", sender: nil)
            }
            else
            {
                print("Hatalı Giriş!")
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        navigationController?.isNavigationBarHidden = true
    }
    override func viewWillDisappear(_ animated: Bool)
    {
        
            navigationController?.isNavigationBarHidden = false
    }
}


//
//  ViewController.swift
//  FileOperations
//
//  Created by Oğuzhan Deniz on 29.11.2022.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var textfieldGirdi: UITextField!
    @IBOutlet weak var resimTutucu: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }
    
    @IBAction func yaz(_ sender: Any)
    {
        let mesaj = textfieldGirdi.text
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
        {
            let dosyaYolu = dir.appendingPathComponent("dosyam.txt")
            
            do
            {
                try mesaj?.write(to: dosyaYolu, atomically: false, encoding: String.Encoding.utf8)
                
                textfieldGirdi.text = ""
            }
            catch
            {
                print("Dosya yazılırken hata oluştu.")
            }
        }
    }
    
    @IBAction func oku(_ sender: Any)
    {
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
        {
            let dosyaYolu = dir.appendingPathComponent("dosyam.txt")
            
            do
            {
                textfieldGirdi.text = try String(contentsOf: dosyaYolu, encoding: String.Encoding.utf8)
            }
            catch
            {
                print("Dosya okunurken hata oluştu.")
            }
        }
    }
    
    @IBAction func sil(_ sender: Any)
    {
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
        {
            let dosyaYolu = dir.appendingPathComponent("dosyam.txt")
            
            if FileManager.default.fileExists(atPath: dosyaYolu.path)
            {
                do
                {
                    try FileManager.default.removeItem(at: dosyaYolu)
                    textfieldGirdi.text = ""
                }
                catch
                {
                    print("Dosya silinirken hata oluştu.")
                }
            }
           
        }
    }
    
    @IBAction func resimKaydet(_ sender: Any)
    {
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
        {
            let dosyaYolu = dir.appendingPathComponent("resimim.png")
            let resim = UIImage(named: "resim")
            
            do
            {
                try resim!.pngData()?.write(to: dosyaYolu)
            }
            catch
            {
                print("Resim yazılırken hata oluştur")
            }
        }
    }
    
    @IBAction func resimGoster(_ sender: Any)
    {
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
        {
            let dosyaYolu = dir.appendingPathComponent("resimim.png")
            
            self.resimTutucu.image = try UIImage(contentsOfFile: dosyaYolu.path)
        }
    }
    
    @IBAction func resimSil(_ sender: Any)
    {
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
        {
            let dosyaYolu = dir.appendingPathComponent("resimim.png")
            
            if FileManager.default.fileExists(atPath: dosyaYolu.path)
            {
                do
                {
                    try FileManager.default.removeItem(at: dosyaYolu)
                }
                catch
                {
                    print("Resim silinirken hata oluştu.")
                }
            }
           
        }
    }
}


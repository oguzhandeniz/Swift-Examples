//
//  ViewController.swift
//  DataTransferPerformSegue
//
//  Created by Oğuzhan Deniz on 24.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var girdiAlani: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    @IBAction func gonderB(_ sender: Any) {
        
        let alinanVeri = girdiAlani.text!
        
        performSegue(withIdentifier: "aTob", sender: alinanVeri)
        
    }
    
    @IBAction func gonderC(_ sender: Any) {
        
        let alinanVeri = girdiAlani.text!
        performSegue(withIdentifier: "aToc", sender: alinanVeri)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.identifier == "aTob" {
            print("B ye Geçiş Yapıldı.")
            
            if let veri = sender as? String {
                let gidilecekVC = segue.destination as! ViewControllerB
                gidilecekVC.mesajB = veri
            }
            
        }
        
        if segue.identifier == "aToc" {
            print("C ye Geçiş Yapıldı.")
            
            if let veri = sender as? String {
                let gidilecekVC = segue.destination as! ViewControllerC
                gidilecekVC.mesajC = veri
            }
        }
    }
}


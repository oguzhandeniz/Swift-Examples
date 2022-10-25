//
//  ViewController.swift
//  DataTransferWithStoryboardSegue
//
//  Created by Oğuzhan Deniz on 23.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var girdiAlani: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     
        let gidecekMesaj = girdiAlani.text!
        
        if segue.identifier == "aTob" {
            
            print("A dan B ye geçiş")
            
            let gidilecekVC = segue.destination as! ViewControllerB
            gidilecekVC.mesajB = gidecekMesaj
        }
        
        if segue.identifier == "aToc" {
            
            print("A dan C ye geçiş")
            
            let gidilecekVC = segue.destination as! ViewControllerC
            gidilecekVC.mesajC = gidecekMesaj
        }
    }

}


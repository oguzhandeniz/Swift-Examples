//
//  ViewController.swift
//  ViperPatternExample
//
//  Created by Oğuzhan Deniz on 1.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    @IBOutlet weak var textFieldSayi1: UITextField!
    @IBOutlet weak var textFieldSayi2: UITextField!
    
    var presenterNesnesi: ViewToPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelSonuc.text = "0"
        Router.createModule(ref: self)
    }


    @IBAction func buttonToplama(_ sender: Any) {
        if let sayi1 = textFieldSayi1.text , let sayi2 = textFieldSayi2.text {
            presenterNesnesi?.toplamaYap(sayi1: sayi1, sayi2: sayi2)
        }
    }
    
    
    @IBAction func buttonCarpma(_ sender: Any) {
        if let sayi1 = textFieldSayi1.text , let sayi2 = textFieldSayi2.text {
            presenterNesnesi?.carpmaYap(sayi1: sayi1, sayi2: sayi2)
        }
    }
}

extension ViewController: PresenterToViewProtocol {
    func vieweVeriGonder(sonuc: String) {
        labelSonuc.text = sonuc
    }
}

//
//  ViewController.swift
//  TextfieldAndPickerview
//
//  Created by Oğuzhan Deniz on 1.11.2022.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate , UIPickerViewDataSource {

    @IBOutlet weak var textFieldUlke: UITextField!
    
    var pickerView: UIPickerView?
    
    var ulkeler:[String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        ulkeler = ["Türkiye" , "Almanya" , "Japonya" , "Rusya" , "İtalya"]
        pickerView = UIPickerView()
        pickerView?.delegate = self
        pickerView?.dataSource = self
        
        textFieldUlke.inputView = pickerView
        
        let toolbar = UIToolbar()
        toolbar.tintColor = UIColor.red
        toolbar.sizeToFit()
        
        let tamamButton = UIBarButtonItem(title: "Tamam", style: .plain, target: self, action: #selector(ViewController.tamamTikla))
        
        let boslukButton = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
        
        let iptalButton = UIBarButtonItem(title: "İptal", style: .plain, target: self, action: #selector(self.iptalTikla))
        
        
        toolbar.setItems([iptalButton, boslukButton, tamamButton], animated: true)
        
        textFieldUlke.inputAccessoryView = toolbar
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ulkeler.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ulkeler[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        textFieldUlke.text = ulkeler[row]
    }
    @objc func iptalTikla() {
        textFieldUlke.text = ""
        textFieldUlke.placeholder = "Ülke Seç"
        view.endEditing(true)
    }
    @objc func tamamTikla () {
        view.endEditing(true)
    }
}


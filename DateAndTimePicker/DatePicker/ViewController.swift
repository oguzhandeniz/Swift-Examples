//
//  ViewController.swift
//  DatePicker
//
//  Created by Oğuzhan Deniz on 31.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldSaat: UITextField!
    @IBOutlet weak var textFieldTarih: UITextField!
    
    var datePicker: UIDatePicker?
    var timePicker: UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        textFieldTarih.inputView = datePicker
        
        timePicker = UIDatePicker()
        datePicker?.datePickerMode = .time
        textFieldSaat.inputView = timePicker
        
        
        datePicker?.addTarget(self, action: #selector(self.tarihGoster(datePicker:)), for: .valueChanged)
        
        timePicker?.addTarget(self, action: #selector(self.saatGoster(timePicker:)), for: .valueChanged)
            
    }
    
    
    @objc func tarihGoster(datePicker:UIDatePicker) {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        let alinanTarih = dateFormatter.string(from: datePicker.date)
        
        textFieldTarih.text = alinanTarih
        
    }
    
    @objc func saatGoster(timePicker:UIDatePicker) {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm"
        let alinanSaat = dateFormatter.string(from: timePicker.date)
        
        textFieldSaat.text = alinanSaat
    }
}


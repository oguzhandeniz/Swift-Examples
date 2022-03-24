//
//  ViewController.swift
//  RGBtoHexConverter
//
//  Created by Oğuzhan Deniz on 12.03.2022.
//

import UIKit

class ViewController: UIViewController
{

    
    
    @IBOutlet weak var txtRed: UITextField!
    @IBOutlet weak var txtGreen: UITextField!
    @IBOutlet weak var txtBlue: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var btnConvert: UIButton!
    @IBOutlet weak var lblSelectedColor: UILabel!
    
    var secilenIndex : Int = 0
    
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }

    
    @IBAction func segmentChanged(_ sender: UISegmentedControl)
    {
        
        secilenIndex = sender.selectedSegmentIndex
        
        lblResult.text?.removeAll()
        txtRed.text?.removeAll()
        txtGreen.text?.removeAll()
        txtBlue.text?.removeAll()
        
        lblSelectedColor.backgroundColor = UIColor.white
        
        
        if secilenIndex == 0
        {
            btnConvert.setTitle("RGB - HEX ÇEVİR", for: UIControl.State.normal)
        }
        else
        {
            btnConvert.setTitle("HEX - RGB ÇEVİR", for: UIControl.State.normal)
        }
    }
    
    
    
    
    
    
    @IBAction func btnConvertClicked(_ sender: UIButton)
    {
        
        if secilenIndex == 0
        {
            // RGB'den HEX'e çevirme işlemi yapılacaktır.
            convertRGBtoHEX()
        }
        else
        {
            // HEX'ten RGB'ye çevirme işlemi yapılacaktır.
            convertHEXtoRGB()
        }
    }
    
    
    func convertRGBtoHEX()
    {
        guard let redValue = UInt8(txtRed.text!) else {return}
        guard let greenValue = UInt8(txtGreen.text!) else {return}
        guard let blueValue = UInt8(txtBlue.text!) else {return}
        
                    let redHex = String(format: "%2X", redValue)
                    let greenHex = String(format: "%2X", greenValue)
                    let blueHex = String(format: "%2X", blueValue)
                    
                    
                    lblResult.text = "HEX Color : #\(redHex)\(greenHex)\(blueHex)"
                    lblSelectedColor.backgroundColor = UIColor(red: CGFloat(redValue)/255, green: CGFloat(greenValue)/255, blue: CGFloat(blueValue)/255, alpha: 1)
              
    }
    
    func convertHEXtoRGB()
    {
        guard let redValue = UInt8(txtRed.text! , radix: 16) else {return}
        guard let greenValue = UInt8(txtGreen.text! , radix: 16) else {return}
        guard let blueValue = UInt8(txtBlue.text! , radix: 16) else {return}
               
                    
                    //print("RED : \(redValue) \nGREEN : \(greenValue) \nBLUE : \(blueValue)")
                    lblResult.text = "RED : \(redValue) \nGREEN : \(greenValue) \nBLUE : \(blueValue)"
                    lblSelectedColor.backgroundColor = UIColor(red: CGFloat(redValue)/255, green: CGFloat(greenValue)/255, blue: CGFloat(blueValue)/255, alpha: 1)
           
        
    }
    
  /*
    func convertRGBtoHEX() // Bu fonksiyon yukarıdaki convertRGBtoHEX fonksiyonuyla aynı işlevi yapar.
    {
        if let redValue = UInt8(txtRed.text!)  //unsignet int tanımladık çünkü 1 - 255 arası değer tutar
        {
            if let greenValue = UInt8(txtGreen.text!)
            {
                if let blueValue = UInt8(txtBlue.text!)
                {
                    // buraya kadar gelinirse kullanıcı değerleri düzgün bir şekilde girmiştir demektir.
                    
                    let redHex = String(format: "%2X", redValue)
                    let greenHex = String(format: "%2X", greenValue)
                    let blueHex = String(format: "%2X", blueValue)
                    
                    
                    lblResult.text = "HEX Color : #\(redHex)\(greenHex)\(blueHex)"
                    lblSelectedColor.backgroundColor = UIColor(red: CGFloat(redValue)/255, green: CGFloat(greenValue)/255, blue: CGFloat(blueValue)/255, alpha: 1)
                }
            }
        }
    }
    */
    
    /*
    func convertHEXtoRGB()  // Bu fonksiyon yukarıdaki convertHEXtoRGB fonksiyonuyla aynı işlevi yapar.
    {
        if let redValue = UInt8(txtRed.text!, radix: 16)
        {
            if let greenValue = UInt8(txtGreen.text!, radix: 16)
            {
                if let blueValue = UInt8(txtBlue.text!, radix: 16)
                {
                    // buraya kadar gelinirse kullanıcı değerleri düzgün bir şekilde girmiştir demektir.
                    
                    //print("RED : \(redValue) \nGREEN : \(greenValue) \nBLUE : \(blueValue)")
                    lblResult.text = "RED : \(redValue) \nGREEN : \(greenValue) \nBLUE : \(blueValue)"
                    lblSelectedColor.backgroundColor = UIColor(red: CGFloat(redValue)/255, green: CGFloat(greenValue)/255, blue: CGFloat(blueValue)/255, alpha: 1)
                }
            }
        }
        
    }
    */
}


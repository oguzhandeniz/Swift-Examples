//
//  ViewController.swift
//  numberPredictionApp
//
//  Created by Oğuzhan Deniz on 15.04.2022.
//

import UIKit

class ViewController: UIViewController {

    // tahmin edilecek sayı
    @IBOutlet weak var txtEstimateNum: UITextField!
    // img kaydet
    @IBOutlet weak var imgSave: UIImageView!
    // btn kaydet
    @IBOutlet weak var btnSave: UIButton!
    // tahmin sayısı
    @IBOutlet weak var txtEstimate: UITextField!
    // tahmin durumu
    @IBOutlet weak var imgEstimateStatus: UIImageView!
    // btn dene
    @IBOutlet weak var btnTry: UIButton!
    // lbl sonuç
    @IBOutlet weak var lblResult: UILabel!
    
    @IBOutlet weak var imgStar1: UIImageView!
    @IBOutlet weak var imgStar2: UIImageView!
    @IBOutlet weak var imgStar3: UIImageView!
    @IBOutlet weak var imgStar4: UIImageView!
    @IBOutlet weak var imgStar5: UIImageView!
    
    
    // ekrandaki 5 tane yıldızı dizi halinde tutar
    var stars: [UIImageView] = [UIImageView]()
    //  kullanıcının yapabileceği maksimum deneme sayısı
    let maxTryNum : Int = 5
    // kullanıcının kaç adet deneme yaptığını gösterir
    var tryNum : Int = 0
    // tahmin edilmesi gereken hedef sayı
    var targetNum : Int = -1
    // oyun başarılı bir şekilde sonlanırsa burası true döndürür
    var successGame : Bool = false
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        stars = [imgStar1, imgStar2, imgStar3, imgStar4, imgStar5]
        
        imgSave.isHidden = true
        imgEstimateStatus.isHidden = true
        btnTry.isEnabled = false
        txtEstimateNum.isSecureTextEntry = true
        lblResult.text = ""
        
    }

    
    @IBAction func btnSaveClick(_ sender: UIButton)
    {
        imgSave.isHidden = false
        if let t = Int (txtEstimateNum.text!)
        {
            targetNum = t
            btnTry.isEnabled = true
            txtEstimateNum.isEnabled = false
            btnSave.isEnabled = false
            imgSave.image = UIImage(named: "okey")
        }
        else
        {
            imgSave.image = UIImage(named: "error")
        }
        
    }
    
    
    
    @IBAction func btnTryClick(_ sender: Any)
    {
        //kullanıcı oyunu bitirmişse herhangi bir şey yapma geri dön
        if successGame == true || tryNum > maxTryNum {
            return
        }
        imgEstimateStatus.isHidden = false
        if let enteredNumber = Int(txtEstimate.text!) {
            
            //eğer kullanıcı düzgün bir değer girdiyse
            tryNum += 1
            stars[tryNum-1].image = UIImage(named: "whiteStar")
            
            
            if enteredNumber > targetNum {
                imgEstimateStatus.image = UIImage(named: "down")
                txtEstimate.backgroundColor = UIColor.red
                
            } else if enteredNumber < targetNum {
                imgEstimateStatus.image = UIImage(named: "up")
                txtEstimate.backgroundColor = UIColor.red
                
            }
            else {
                //iki sayı birbirine eşittir
                //oyuncu başarılı bir şekilde tahmin etti
                imgEstimateStatus.image = UIImage(named: "okey")
                btnSave.isEnabled = true
                lblResult.text = "TRUE ESTIMATE!!"
                txtEstimate.backgroundColor = UIColor.green
                txtEstimateNum.isSecureTextEntry = false
                successGame = true
                
                let alertController = UIAlertController(title: "SUCCESS", message: "You Guessed the Number Correctly. CONGRATULATIONS!!!", preferredStyle: UIAlertController.Style.alert)
                
                let okAction = UIAlertAction(title: "okey", style: UIAlertAction.Style.default, handler: nil)
               
                alertController.addAction(okAction)
                
                present(alertController, animated: true, completion: nil)
                
                
                return
                
            }
            
            
            
        } else {
            //eğer kullanıcının girdiği değer düzgün değilse
           
            imgEstimateStatus.image = UIImage(named: "error")
            
        }
        
        if tryNum == maxTryNum {
            //buraya gelindiyse oyun başarısız bir şekilde sona ermiştir
            btnTry.isEnabled = false
            imgEstimateStatus.image = UIImage(named: "error")
            lblResult.text = "GAME FAILED \nYour friend \(targetNum) Entered Number"
            txtEstimateNum.isSecureTextEntry = false
            
            var alertController = UIAlertController(title: "SORRY :(", message: "Your guess is over. The number you have to guess : \(targetNum)", preferredStyle: UIAlertController.Style.alert)
            
            
            var action = UIAlertAction(title: "okey", style: UIAlertAction.Style.default, handler: nil)
            alertController.addAction(action)
            present(alertController, animated: true, completion: nil)
            
            
            
            return
        }
        
        
        
    }
    
    
    
}


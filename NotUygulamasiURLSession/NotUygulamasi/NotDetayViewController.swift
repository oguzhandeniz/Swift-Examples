//
//  Not DetayViewController.swift
//  NotUygulamasi
//
//  Created by Oğuzhan Deniz on 10.12.2022.
//

import UIKit

class Not_DetayViewController: UIViewController {

    @IBOutlet weak var textFieldDersAdi: UITextField!
    @IBOutlet weak var textFieldNot1: UITextField!
    @IBOutlet weak var textFieldNot2: UITextField!
    
    var not:Notlar?
    override func viewDidLoad() {
        super.viewDidLoad()

        if let n = not {
            textFieldDersAdi.text = n.ders_adi
            textFieldNot1.text = n.not1
            textFieldNot2.text = n.not2
        }
    }
    
    
    
    @IBAction func notSil(_ sender: Any) {
        if let n = not {
            if let nid = Int(n.not_id!) {
                notSil(not_id: nid)
            }
        }
    }
    
    @IBAction func notGuncelle(_ sender: Any) {
        if let n = not,let ad = textFieldDersAdi.text,let not1 = textFieldNot1.text,let not2 = textFieldNot2.text {
            
            if let nid = Int(n.not_id!),let n1 = Int(not1),let n2 = Int(not2) {
               notGuncelle(not_id: nid, ders_adi: ad, not1: n1, not2: n2)
            }
            
        }
    }
    
    func notGuncelle(not_id:Int,ders_adi:String,not1:Int,not2:Int){
        
        var request = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/notlar/update_not.php")!)
        request.httpMethod = "POST"
        let postString = "not_id=\(not_id)&ders_adi=\(ders_adi)&not1=\(not1)&not2=\(not2)"
        request.httpBody = postString.data(using: .utf8)
        
        URLSession.shared.dataTask(with: request) { data,response,error in
            if error != nil || data == nil {
                print("Hata")
                return
            }
            
            do{
                if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String:Any]{
                    print(json)
                }
                
            }catch{
                print(error.localizedDescription)
            }
            }.resume()
    }
    
    func notSil(not_id:Int){
        
        var request = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/notlar/delete_not.php")!)
        request.httpMethod = "POST"
        let postString = "not_id=\(not_id)"
        request.httpBody = postString.data(using: .utf8)
        
        URLSession.shared.dataTask(with: request) { data,response,error in
            if error != nil || data == nil {
                print("Hata")
                return
            }
            
            do{
                if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String:Any]{
                    print(json)
                }
                
            }catch{
                print(error.localizedDescription)
            }
        }.resume()
    }
}

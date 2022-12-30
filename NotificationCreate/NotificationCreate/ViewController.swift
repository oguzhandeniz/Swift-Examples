//
//  ViewController.swift
//  NotificationCreate
//
//  Created by Oğuzhan Deniz on 14.12.2022.
//

import UIKit
import UserNotifications // bildirim izin kontrollerini kullanmak için import ediyoruz

class ViewController: UIViewController {

    var izinKontrol: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: { (granted,error) in
            
            self.izinKontrol = granted
            
            if granted {
                print("İzin alma işlemi başarılı")
            }
            else {
                print("İzin alma işlemi başarısız")
            }
        })
        
    }


}


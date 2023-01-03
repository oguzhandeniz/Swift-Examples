//
//  ViewController.swift
//  BackgroundModeVoice
//
//  Created by Oğuzhan Deniz on 14.12.2022.
//

import UIKit
import AVFoundation //ses dosyalarını oynatmak için gerekli olan kütüphane

class ViewController: UIViewController {

    
    var sesOynatici: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            
            let dosyaYolu = Bundle.main.path(forResource: "music", ofType: ".mp3")
            sesOynatici = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: dosyaYolu!))
            sesOynatici.prepareToPlay()
            
            
        } catch {
            print(error.localizedDescription)
        }
        
        
    }

    @IBAction func baslaButton(_ sender: Any) {
        sesOynatici.play()
    }
    
    @IBAction func durButton(_ sender: Any) {
        sesOynatici.stop()
    }
}


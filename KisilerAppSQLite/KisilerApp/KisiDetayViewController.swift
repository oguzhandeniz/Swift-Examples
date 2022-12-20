//
//  KisiDetayViewController.swift
//  KisilerApp
//
//  Created by Oğuzhan Deniz on 6.12.2022.
//

import UIKit

class KisiDetayViewController: UIViewController {

    @IBOutlet weak var kisiTelLabel: UILabel!
    @IBOutlet weak var kisiAdLabel: UILabel!
    
    var kisi: Kisiler?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let k = kisi {
            kisiAdLabel.text = k.kisi_ad
            kisiTelLabel.text = k.kisi_tel
        }
    }
    


}

//
//  ViewControllerC.swift
//  DataTransferPerformSegue
//
//  Created by Oğuzhan Deniz on 24.10.2022.
//

import UIKit

class ViewControllerC: UIViewController {

    @IBOutlet weak var etiketC: UILabel!
    
    var mesajC:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        etiketC.text = mesajC
    }
    

 

}

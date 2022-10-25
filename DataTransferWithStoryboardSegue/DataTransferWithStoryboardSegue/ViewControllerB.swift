//
//  ViewControllerB.swift
//  DataTransferWithStoryboardSegue
//
//  Created by Oğuzhan Deniz on 23.10.2022.
//

import UIKit

class ViewControllerB: UIViewController {

    @IBOutlet weak var etiketB: UILabel!
    
    var mesajB:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

       etiketB.text = mesajB!

    }
    
}

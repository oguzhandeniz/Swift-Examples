//
//  ViewController.swift
//  UILabel
//
//  Created by Oğuzhan Deniz on 13.02.2022.
//

import UIKit

class ViewController: UIViewController
{

    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        label.text = "Hello, iOS!"
        label.font = UIFont.systemFont(ofSize: 19.0)
        label.textColor = UIColor.red
        
    }


}


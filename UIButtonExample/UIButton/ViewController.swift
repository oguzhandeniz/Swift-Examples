//
//  ViewController.swift
//  UIButton
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
        
    }

    @IBAction func didTapButton(_ sender: UIButton)
    {
        sender.setTitleColor(UIColor.blue, for: UIControl.State.normal)
        label.text = "Welcome!"
    }
    
}


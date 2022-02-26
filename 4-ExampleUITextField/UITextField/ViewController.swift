//
//  ViewController.swift
//  UITextField
//
//  Created by Oğuzhan Deniz on 13.02.2022.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
       
    }
    
    @IBAction func didTapLoginButton(_ sender: UIButton)
    {
        print("Username: \(userNameTextField.text)")
        print("Password: \(passwordTextField.text)")
    }

}


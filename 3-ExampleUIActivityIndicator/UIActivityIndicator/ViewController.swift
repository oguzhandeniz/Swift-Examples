//
//  ViewController.swift
//  UIActivityIndicator
//
//  Created by Oğuzhan Deniz on 13.02.2022.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        errorLabel.isHidden = true
        
    }

    @IBAction func didTapLoginButton(_ sender: UIButton)
    {
        if userNameTextField.text == "oguzhan" , passwordTextField.isHidden
        {
            passwordTextField.isHidden = false
            errorLabel.isHidden = true
        }
        else
        {
            if userNameTextField.text != "oguzhan"
            {
                errorLabel.text = "Wrong username! Please try again."
                errorLabel.isHidden = false
            }
            
            else if !(passwordTextField.isHidden) , passwordTextField.text == "251216"
            {
                activityIndicatorView.startAnimating()
                errorLabel.isHidden = true
            }
            else
            {
                errorLabel.text = "Wrong password! Please try again."
                errorLabel.isHidden = false
            }
        }
        
        
    print("Username: \(userNameTextField.text)")
    print("Password: \(passwordTextField.text)")
        
    }

}


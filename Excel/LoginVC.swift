//
//  LoginVC.swift
//  Excel
//
//  Created by Shuvayan Saha on 30/01/17.
//  Copyright © 2017 MagicMind Technologies Pvt. Ltd. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var userScrollView: UIScrollView!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var loginButtonOutlet: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // For hide keyboard
        hideKeyboardWhenTappedAround()
        
        // For Keyboard Textfield Next Key
        UITextField.connectFields(fields: [textField1, textField2])
        
        // Button Border Color
        loginButtonOutlet.layer.cornerRadius = 5
        loginButtonOutlet.layer.borderWidth = 1
        loginButtonOutlet.layer.borderColor = UIColor.white.cgColor

    }



    // Login Button
    @IBAction func loginButtonTouchUpInside(_ sender: UIButton) {
                
        // Moved to Dashboard Controller
        let storyboard = UIStoryboard(name: "Dashboard", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "view") as UIViewController
        self.present(controller, animated: true, completion: nil)
        
    }








}





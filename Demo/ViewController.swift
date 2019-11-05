//
//  ViewController.swift
//  Demo
//
//  Created by Shailesh Prabhudesai on 05/11/19.
//  Copyright © 2019 Shailesh Prabhudesai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginButtonAction: CustomButton!
    @IBOutlet weak var emailTextField: CustomTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButtonAction.setTitle(name: "Register")
     }

    @IBAction func onClickedLoginButton(_ sender: UIButton) {
        loginButtonAction.shake()
        if emailTextField.text == "" {
            emailTextField.shake()
        }
    }
}

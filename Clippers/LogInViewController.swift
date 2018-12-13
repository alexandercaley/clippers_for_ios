//
//  LogInViewController.swift
//  Clippers
//
//  Created by Alexander Caley on 12/12/18.
//  Copyright © 2018 Alexander Caley. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController{
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        Auth.auth().signIn(withEmail: email.text!, password: password.text!)
        { (user, error) in
            if error == nil{
                UserDefaults.standard.set(self.email.text, forKey: "username")
                self.performSegue(withIdentifier: "LogintoHome", sender: self)
            }
            else{
                let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                
                alertController.addAction(defaultAction)
                self.present(alertController, animated: true, completion: nil)
            }
        }
    }
}

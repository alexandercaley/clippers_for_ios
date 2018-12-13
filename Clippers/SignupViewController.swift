//
//  SignupViewController.swift
//  Clippers
//
//  Created by Alexander Caley on 12/12/18.
//  Copyright © 2018 Alexander Caley. All rights reserved.
//

import UIKit
import Firebase

class SignupViewController: UIViewController{
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var passConfirm: UITextField!
    
    
    @IBAction func signUpButtonPressed(_ sender: Any) {
        
        //Error
        if password.text != passConfirm.text{
            let alertController = UIAlertController(title: "Passwords Do Not Match", message: "Please re-enter password", preferredStyle: .alert)

            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)

            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        }
        //Creates User
        else{
            Auth.auth().createUser(withEmail: email.text!, password: password.text!){ (user, error) in

                if error == nil{
                    UserDefaults.standard.set(self.email.text, forKey: "username")
                    self.performSegue(withIdentifier: "signUptoHome", sender: self)
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
}

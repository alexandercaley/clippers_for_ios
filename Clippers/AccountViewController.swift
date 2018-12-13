//
//  AccountViewController.swift
//  Clippers
//
//  Created by Alexander Caley on 12/12/18.
//  Copyright © 2018 Alexander Caley. All rights reserved.
//

import UIKit
import Firebase

class AccountViewController: UIViewController{
    
    @IBAction func logoutButtonPressed(_ sender: Any) {
        do{
            try Auth.auth().signOut()
            UserDefaults.standard.set("", forKey: "username")
        }
        catch let signOutError as NSError{
            print ("Error signing out: %@", signOutError)
        }
        self.dismiss(animated: true, completion: nil)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let initial = storyboard.instantiateInitialViewController()
        UIApplication.shared.keyWindow?.rootViewController = initial
    }
}

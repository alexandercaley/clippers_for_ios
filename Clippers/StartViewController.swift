//
//  StartViewController.swift
//  Clippers
//
//  Created by Alexander Caley on 12/12/18.
//  Copyright © 2018 Alexander Caley. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class StartViewController: UIViewController{
    override func viewWillAppear(_ animated: Bool) {
        super .viewWillAppear(animated)
        if Auth.auth().currentUser != nil {
            self.performSegue(withIdentifier: "alreadyLoggedIn", sender: nil)
        }
    }
}

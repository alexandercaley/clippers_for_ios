//
//  ClippersViewController.swift
//  Clippers
//
//  Created by Alexander Caley on 12/13/18.
//  Copyright © 2018 Alexander Caley. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class ClippersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var clippersTableView: UITableView!
    
    var barbers = [Clippers]()
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return barbers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCellControllerTableViewCell
        
        let barber: Clippers
        barber = barbers[indexPath.row]
        
        cell.name.text = barber.name
        cell.email.text = barber.email
        cell.distance.text = barber.distance
        cell.years.text = barber.years
        cell.rating.text = barber.rating
        
        
        return cell
    }
    
    override func viewDidLoad() {
        super .viewDidLoad()
//        FirebaseApp.configure()
//        
//        let ref = Database.database().reference().child("workers")
//        ref.observe(.value, with: {(snapshot) in
//            
//            if snapshot.childrenCount > 0{
//                self.barbers.removeAll()
//                
//                for clippers in snapshot.children.allObjects as! [DataSnapshot]{
//                    let clipperObject = clippers.value as? [String: AnyObject]
//                    let clipperName = clipperObject?["name"]
//                    let clipperEmail = clipperObject?["email"]
//                    let clipperDistance = clipperObject?["distance"]
//                    let clipperRating = clipperObject?["rating"]
//                    let clipperYears = clipperObject?["years"]
//                    let clipperPic = clipperObject?["img"]
//                    
//                    let clipper = Clippers(name: clipperName as! String?, email: clipperEmail as! String?, rating: clipperRating as! String?, distance: clipperDistance as! String?, years: clipperYears as! String?, clipperImage: clipperPic as! String?)
//                    
//                    self.barbers.append(clipper)
//                }
//                self.clippersTableView.reloadData()
//            }
//            
//        })
    }
    
}

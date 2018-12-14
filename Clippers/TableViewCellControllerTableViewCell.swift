//
//  TableViewCellControllerTableViewCell.swift
//  Clippers
//
//  Created by Alexander Caley on 12/13/18.
//  Copyright © 2018 Alexander Caley. All rights reserved.
//

import UIKit

class TableViewCellControllerTableViewCell: UITableViewCell {

    
    @IBOutlet weak var barberImage: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var rating: UILabel!
    @IBOutlet weak var distance: UILabel!
    @IBOutlet weak var years: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

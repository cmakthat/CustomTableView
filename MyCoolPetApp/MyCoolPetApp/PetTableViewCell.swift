//
//  PetTableViewCell.swift
//  MyCoolPetApp
//
//  Created by Curtis Mak on 2017-11-15.
//  Copyright © 2017 Curtis Mak. All rights reserved.
//

import UIKit

class PetTableViewCell: UITableViewCell {

    @IBOutlet var petImageView: UIImageView!
    
    @IBOutlet var petLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

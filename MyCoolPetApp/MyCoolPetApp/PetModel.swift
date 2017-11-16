//
//  PetModel.swift
//  MyCoolPetApp
//
//  Created by Curtis Mak on 2017-11-15.
//  Copyright © 2017 Curtis Mak. All rights reserved.
//

import Foundation
import UIKit

class PetModel {
    
    let petName: String
    let petImage: UIImage
    
    init(petName: String, petImage: UIImage){
        
        self.petName = petName
        self.petImage = petImage
    }
}

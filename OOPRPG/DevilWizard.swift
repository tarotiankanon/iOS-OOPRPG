//
//  DevilWizard.swift
//  OOPRPG
//
//  Created by Taro on 11/15/2558 BE.
//  Copyright © 2558 virtuoso. All rights reserved.
//

import Foundation

class DevilWizard: Enemy {
    
    override var loot: [String] {
        return ["Osmium Wand", "Ice Orb", "Demon Amulet"]
    }
    
    override var type: String {
        return "Devil Wizard"
    }
}
//
//  KImera.swift
//  OOPRPG
//
//  Created by Taro on 11/15/2558 BE.
//  Copyright © 2558 virtuoso. All rights reserved.
//

import Foundation

class Kimara: Enemy {
    
    let immuneMax = 15
    
    override var loot: [String] {
        return ["Ruby Dagger", "Swift Blade"]
    }
    
    override var type: String {
        return "Kimara"
    }
    
    override func attemptAttack(attackPower: Int) -> Bool {
        if attackPower > immuneMax {
            return super.attemptAttack(attackPower)
        } else {
            return false
        }
    }
    
}
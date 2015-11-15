//
//  Enemy.swift
//  OOPRPG
//
//  Created by Taro on 11/15/2558 BE.
//  Copyright © 2558 virtuoso. All rights reserved.
//

import Foundation

class Enemy: Character {
    
    // Computed property
    var loot: [String] {
        get {
            return ["Dagger", "Elixir"]
        }
    }
    
    var type: String {
        get {
            return "Grunt"
        }
    }
    
    func dropLoot() -> String? {
        if !isAlive {
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
        } else {
            return nil
        }
    }
    
}
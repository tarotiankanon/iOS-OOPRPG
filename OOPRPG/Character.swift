//
//  Character.swift
//  OOPRPG
//
//  Created by Taro on 11/15/2558 BE.
//  Copyright © 2558 virtuoso. All rights reserved.
//

import Foundation

class Character {
    // Data encapsulation
    private var _hp: Int = 100
    private var _attackPower: Int = 10
    
    // Get only no set bitch!!
    var hp: Int {
        get {
            return _hp
        }
    }
    
    var attackPower: Int {
        get {
            return _attackPower
        }
    }
    // Computed property: Property that have computation in them before returning a value
    var isAlive: Bool {
        get {
            if hp <= 0 {
                return false
            } else {
                return true
            }
        }
    }
    
    init(hp: Int, attackPower: Int) {
        self._hp = hp
        self._attackPower = attackPower
    }
    
    func attemptAttack(attackPower: Int) -> Bool {
        self._hp -= attackPower
        return true
    }

}
//
//  Player.swift
//  OOPRPG
//
//  Created by Taro on 11/15/2558 BE.
//  Copyright © 2558 virtuoso. All rights reserved.
//

import Foundation

class Player: Character {
    private var _name: String = "Player"
    
    var name: String {
        get {
            return _name
        }
    }
    
    private var _inventory: [String] = [String]()
    
    var inventory: [String] {
        get {
            return _inventory
        }
    }
    
    func addItemToInventory(item: String) {
        _inventory.append(item)
    }
    
    convenience init(name: String, hp: Int, attackPower: Int) {
        self.init(hp: hp, attackPower: attackPower)
        _name = name
    }
}
//
//  ViewController.swift
//  OOPRPG
//
//  Created by Taro on 11/15/2558 BE.
//  Copyright © 2558 virtuoso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var printLbl: UILabel!
    @IBOutlet weak var playerHpLbl: UILabel!
    @IBOutlet weak var enemyHpLbl: UILabel!
    
    @IBOutlet weak var KimaraImg: UIImageView!
    @IBOutlet weak var DevilWizardImg: UIImageView!
    
    @IBOutlet weak var chestBtn: UIButton!
    
    var player: Player!
    var enemy: Enemy!
    var itemDroppedMsg: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Initialize a player
        player = Player(name: "Snow", hp: 110, attackPower: 20)
        generateRandomEnemy()
        
        playerHpLbl.text = "HP: \(player.hp)"
        enemyHpLbl.text = "HP: \(enemy.hp)"
    }
    
    func generateRandomEnemy() {
        let rand = Int(arc4random_uniform(2))
        if rand == 0 {
            enemy = Kimara(hp: 50, attackPower: 12)
            KimaraImg.hidden = false
        } else {
            enemy = DevilWizard(hp: 60, attackPower: 15)
            DevilWizardImg.hidden = false
            
        }
        printLbl.text = "A wild \(enemy.type) appeared!!"
        
        enemyHpLbl.text = "HP: \(enemy.hp)"
    }
    
    
    @IBAction func attackBtnPressed(sender: AnyObject) {
        if enemy.attemptAttack(player.attackPower) {
            printLbl.text = "Attack \(enemy.type) for \(player.attackPower) HP!!"
            enemyHpLbl.text = "HP: \(enemy.hp)"
        } else {
            printLbl.text = "Attack was unsuccessful"
        }
        
        if let loot = enemy.dropLoot() {
            player.addItemToInventory(loot)
            itemDroppedMsg = "\(loot) acquired!!"
            chestBtn.hidden = false
        }
        
        if !enemy.isAlive {
            enemyHpLbl.text = ""
            printLbl.text = "\(enemy.type) was defeated!!"
            KimaraImg.hidden = true
            DevilWizardImg.hidden = true
        }
    }
    
    @IBAction func chestBtnPressed(sender: AnyObject) {
        chestBtn.hidden = true
        printLbl.text = itemDroppedMsg
        
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "generateRandomEnemy", userInfo: nil, repeats: false)
    }
    
}



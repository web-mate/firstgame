//
//  ViewController.swift
//  firstgame
//
//  Created by dimitris vlagas on 11/6/16.
//  Copyright © 2016 webmate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var player1: Knight!
    var player2: Orc!
    @IBOutlet weak var attackBtnOrc: UIButton!
    @IBOutlet weak var attackBtnKnight: UIButton!
    @IBOutlet weak var hpOrc: UILabel!
    @IBOutlet weak var hpKnight: UILabel!
    @IBOutlet weak var battleScreen: UILabel!
    @IBOutlet weak var orcPlayer: UIImageView!
    @IBOutlet weak var knightPlayer: UIImageView!
    @IBOutlet weak var restartBtn: UIButton!
 

    override func viewDidLoad() {
        super.viewDidLoad()
        startGame()
        
    }
   
    func generateRandomKnight() {
    let randomHpPlayer = Int(arc4random_uniform(50)+50)
   player1 = Knight(hp: randomHpPlayer, attackPw: 20)
    }
    
    func generateRandomOrc(){
        let randomHpPlayer = Int(arc4random_uniform(50)+50)
     player2 = Orc(hp: randomHpPlayer, attackPw: 20)
    }
    
    func startGame(){
        generateRandomOrc()
        generateRandomKnight()
        hpKnight.text = String(player1.Hp)
        hpOrc.text = String(player2.Hp)
        attackBtnOrc.hidden = false
        attackBtnKnight.hidden = false
        hpOrc.hidden = false
        hpKnight.hidden = false
        orcPlayer.hidden = false
        knightPlayer.hidden = false
        restartBtn.hidden = true
    }
    
    func deadPlayerActions() {
        
            attackBtnOrc.hidden = true
            attackBtnKnight.hidden = true
            hpOrc.hidden = true
            hpKnight.hidden = true
            orcPlayer.hidden = true
            knightPlayer.hidden = true
            restartBtn.hidden = false
        
    }
    
    @IBAction func knightAttack(sender: AnyObject) {
      
            if player1.attempAttack(player1.Attack_power){
                
                 hpOrc.text = String(player1.Hp)
                battleScreen.text = "Knight attacked orc with \(player1.Attack_power)"
            }else{
                battleScreen.text = "Knight Attack wasn't successfull"
        }
        if !player1.isAlive {
            battleScreen.text = "Knight won!!!"
            deadPlayerActions()
        }
        
    }
    
    @IBAction func orcAttack(sender: AnyObject) {
        
        if player2.attempAttack(player1.Attack_power){
            hpKnight.text = String(player2.Hp)
            battleScreen.text = "Orc attacked knight with \(player2.Attack_power)"
        }else{
            battleScreen.text = "Orc Attack wasn't successfull"
        }
        if !player2.isAlive {
            battleScreen.text = "Orc won!!!"
            deadPlayerActions()
        }
        
    }
    
    @IBAction func restartTheGame(sender: AnyObject) {
        startGame()
    }
   


}


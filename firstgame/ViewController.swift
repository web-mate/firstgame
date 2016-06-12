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
 

    override func viewDidLoad() {
        super.viewDidLoad()
        generateRandomOrc()
        generateRandomKnight()
        hpKnight.text = String(player1.Hp)
        hpOrc.text = String(player2.Hp)
        
    }
   
    func generateRandomKnight() {
    let randomHpPlayer = Int(arc4random_uniform(50)+50)
   player1 = Knight(hp: randomHpPlayer, attackPw: 20)
    }
    
    func generateRandomOrc(){
        let randomHpPlayer = Int(arc4random_uniform(50)+50)
     player2 = Orc(hp: randomHpPlayer, attackPw: 20)
    }
    
    @IBAction func knightAttack(sender: AnyObject) {
    }
    
    @IBAction func orcAttack(sender: AnyObject) {
    }


}


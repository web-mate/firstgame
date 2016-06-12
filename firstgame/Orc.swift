//
//  Orc.swift
//  firstgame
//
//  Created by dimitris vlagas on 11/6/16.
//  Copyright © 2016 webmate. All rights reserved.
//

import Foundation

class Orc: Character {
    var Name: String{
        return "Orca"
    }
    
    convenience init(hp:Int,attackPw:Int){
        self.init(startingHp:hp,Attack_power:attackPw)
        
    }
}
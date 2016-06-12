//
//  Character.swift
//  firstgame
//
//  Created by dimitris vlagas on 11/6/16.
//  Copyright © 2016 webmate. All rights reserved.
//

import Foundation

class Character{

    private var _Attack_Power=10
    private var _Hp = 100
    
    var Attack_power:Int{
        get{
            return _Attack_Power
        }
    }

    
    var Hp:Int{
        get{
            return _Hp
        }
    }
    
    var isAlive:Bool{
        if _Hp > 0{
            return true
        }
        return false
    }
    
    init(startingHp:Int,Attack_power:Int){
        self._Attack_Power = Attack_power
        self._Hp = startingHp
    }
    
    func attempAttack(attackPwr:Int) -> Bool {
        self._Hp -= attackPwr
        return true
    }
}

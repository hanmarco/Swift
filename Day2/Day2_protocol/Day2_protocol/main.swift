//
//  main.swift
//  Day2_protocol
//
//  Created by 한상현 on 2015. 6. 17..
//  Copyright (c) 2015년 한상현. All rights reserved.
//

import Foundation

protocol Singing{

    func sing()
    
    var duration : Int { get set }
    init ( d: Int)
}

class Bird : Singing {

    func sing() {
        println("sing")
    }
    var duration : Int {
        get{
            return 0
        }
        set {
            
        }
    }
    init(){}
    required convenience init(d: Int) {
    self.init()
    }
}

var obj : Singing = Bird(d:1)
obj.sing()


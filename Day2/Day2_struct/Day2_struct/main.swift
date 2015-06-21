//
//  main.swift
//  Day2_struct
//
//  Created by 한상현 on 2015. 6. 17..
//  Copyright (c) 2015년 한상현. All rights reserved.
//

import Foundation


enum Pet : Int {
    case Cat
    case Dog
    
    var name : String {
        switch self {
        case .Cat:
                return "Cat"
        case .Dog:
                return "Dog"
        }
    }
}

var myPet = Pet.Cat
var pet2 = Pet(rawValue: 0)
println(pet2?.rawValue)
println(pet2?.name)





class Rectangle {
    
    var width = 0 ; var height = 0
    
}

class Square : Rectangle {
    
}

struct Point {
    var x : Int
    var y : Int
    
    init(x : Int)   {
        self.init(x: 0 , y: 0)
        self.x = x
    }
    
    init(x : Int , y : Int){
        self.x = x
        self.y = y
    }
    
    func hello(){
        println("hello world")
    }
}

var r = Rectangle()

var p = Point(x: 20, y: 30)
p.hello()
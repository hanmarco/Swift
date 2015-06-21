//
//  main.swift
//  Day_2_Closure
//
//  Created by 한상현 on 2015. 6. 17..
//  Copyright (c) 2015년 한상현. All rights reserved.
//

import Foundation

class Rectangle{
    
    var width: Int = 0
    var height: Int = 0
    
    var square : Int { return width * height }
    
}

var x = Rectangle()
x.width = 10
x.height = 5

println(x.square)
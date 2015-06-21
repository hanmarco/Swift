//
//  main.swift
//  Day2_inheritance
//
//  Created by 한상현 on 2015. 6. 17..
//  Copyright (c) 2015년 한상현. All rights reserved.
//

import Foundation
/*
class Parent {
    var a : Int
    init(a: Int) {self.a = a}
}

class Child : Parent {
    
}

var c1 = Child(a: 10)

*/

/*
class Parent {
    var a : Int
    init(a: Int) {self.a = a}
}

class Child : Parent {
    var b : Int
    init(b: Int)
    {
        self.b = b
        super.init(a:0)
    }
}

var c1 = Child(b: 10)
*/


/*
class Parent {
    var a : Int
    init(a: Int) {self.a = a}
    convenience init() {self.init(a:10)}
}

class Child : Parent {
    var b : Int
    init(b: Int)
    {
        self.b = b
        super.init(a:0)YP
    }
    override init (a: Int)
    {
        self.b = 10
        super.init(a: 10)
    }
}

var c1 = Child(b: 10)
*/




class Parent {
    var b : Int = 12

    convenience init(b: Int){
        self.init()
    }
}



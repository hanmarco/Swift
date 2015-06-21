//
//  main.swift
//  Day2
//
//  Created by 한상현 on 2015. 6. 17..
//  Copyright (c) 2015년 한상현. All rights reserved.
//

import Foundation

class Myclass{
    var ptr : Yourclass!
    deinit{
        println("deinit Myclass")
    }
}

class Yourclass{
    unowned var ptr : Myclass
    init (obj: Myclass){
        ptr = obj
    }
    deinit{
        println("deinit YourClass " )
    }
}
/*
class A{
    var classB : B?
    
    deinit{
        println("class A가 메모리에서 해제");
    }
}

class B{
    var classA : A?
    
    deinit{
        println("class B가 메모리에서 해제");
    }
}

var obj : Myclass! = Myclass()
obj = nil

var a : A! = A()
var b : B! = B()
a.classB = b
b.classA = a

a.classB = nil
a = nil
b = nil
*/
var obj1 : Myclass! = Myclass()
var obj2 : Yourclass! = Yourclass(obj: obj1)
obj1.ptr = obj2
obj2.ptr = obj1

obj1 = nil
obj2 = nil

//
//  main.swift
//  Day_3_Foundation
//
//  Created by 한상현 on 2015. 6. 18..
//  Copyright (c) 2015년 한상현. All rights reserved.
//

import Foundation

class Rectangle : NSObject{
    
    var width = 0
    var height = 0
    
    override var description: String {
        return "사각형 너비:\(width) 높이:\(height) 면적: \(width*height)"
    }


    override func isEqual(object: AnyObject?) -> Bool {
        println("isEqual")
        return false
    }
    
    func size() -> Int{
        return 0
    }
    
    init(width : Int){
        self.width = width
    }
    
    convenience init(width: Int , height : Int){
        self.init(width: width)
        self.height = height

    }
    

}

var obj1 = Rectangle(width : 10)
var obj2 = Rectangle(width : 20)
var obj3 = Rectangle(width: 30, height: 40)

obj1 == obj2

obj1.isEqual(obj2)


println(obj1.respondsToSelector("size"))            //NSObject를 상속받아야 사용가능
println(obj1.respondsToSelector("initWithWidth:"))
println(obj1.respondsToSelector("width"))
println(obj1.respondsToSelector("setWidth"))
println(obj3.description)


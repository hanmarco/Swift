//
//  main.swift
//  Day_3_Serializable
//
//  Created by 한상현 on 2015. 6. 18..
//  Copyright (c) 2015년 한상현. All rights reserved.
//

import Foundation

let data = NSKeyedArchiver.archivedDataWithRootObject("ABC")

println(data.length)

class Myclass : NSObject, NSCoding{
    var value = 110
    
    func encodeWithCoder(aCoder: NSCoder) {
        
        aCoder.encodeInteger(value, forKey: "KEY")
    }
    
    required  init(coder aDecoder: NSCoder)
    {
        value = aDecoder.description as! Int
        
    }
    override init() {}
}

let obj = Myclass()
let data2 = NSKeyedArchiver.archivedDataWithRootObject(obj)

println(data2.length)
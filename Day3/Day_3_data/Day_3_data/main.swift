//
//  main.swift
//  Day_3_data
//
//  Created by 한상현 on 2015. 6. 18..
//  Copyright (c) 2015년 한상현. All rights reserved.
//

import Foundation

println("Hello, World!")


var str = "hello world"

let a : NSString = str


println(a.length)






let str1 = "hello Swift"
let str2 : NSString = "hello objC"

println(str2.length)

let str3 : NSString = str2 as String
let str4 : NSString = str1

let str6 = str4.substringFromIndex(3)

println(str6)


let filePath = "/Users/Hanmarco/Desktop/temp.txt"
var error :NSError?
let ret = str1.writeToFile(filePath, atomically: true, encoding: NSUTF8StringEncoding, error: &error)
if !ret {
    println(error?.localizedDescription)
}
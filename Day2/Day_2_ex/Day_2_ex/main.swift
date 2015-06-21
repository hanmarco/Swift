//
//  main.swift
//  Day_2_ex
//
//  Created by 한상현 on 2015. 6. 17..
//  Copyright (c) 2015년 한상현. All rights reserved.
//

import Foundation

var array = [1,2,3,4,5]

array.sort({ a,b in return a<b})


println(array)

func add(i : Int , j : Int ) -> Int {
    let sum = i + j
    return sum
}

let ret = add(1, 2)

println(ret)


func add(i : Int , j:Int, handler : ( Int )-> Void){
    handler(i+j)
}

add(3, 4 , { (result:Int) -> Void in println(result)})
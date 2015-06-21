//
//  main.swift
//  Day_2_TypeCheck
//
//  Created by 한상현 on 2015. 6. 17..
//  Copyright (c) 2015년 한상현. All rights reserved.
//

import Foundation

var str : Any = "123"

//str = 123

if let str2 = str as? String {
    str2.toInt()
    str2.uppercaseString

}

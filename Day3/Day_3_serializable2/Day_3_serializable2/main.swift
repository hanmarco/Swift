//
//  main.swift
//  Day_3_serializable2
//
//  Created by 한상현 on 2015. 6. 18..
//  Copyright (c) 2015년 한상현. All rights reserved.
//

import Foundation

    let filePath = "/Users/Hanmarco/Desktop/data.dat"
    let ret = NSKeyedArchiver.archiveRootObject("ello world", toFile: filePath)

    let str = NSKeyedUnarchiver.unarchiveObjectWithFile(filePath) as! String
    
    let data = NSKeyedArchiver.archivedDataWithRootObject("String Data")
    println("파일 복원 \(str)")
    
    let str2 = NSKeyedUnarchiver.unarchiveObjectWithData(data) as! String
    println("NSData 복원 \(str2)")


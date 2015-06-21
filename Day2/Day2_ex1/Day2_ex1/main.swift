//
//  main.swift
//  Day2_ex1
//
//  Created by 한상현 on 2015. 6. 17..
//  Copyright (c) 2015년 한상현. All rights reserved.
//

import Foundation

enum AreaCode : String{
    case Busan = "051"
    case Daejeon = "042"
    case Seoul = "02"

    var name : String {
    
        switch self {
        case .Busan:
            return "부산"
        case .Daejeon:
            return "대전"
        case .Seoul:
            return "서울"
        }
    }
    
    func description() -> String{
        return self.name
    }

}

var x = AreaCode.Seoul.rawValue

println(x)

println(AreaCode(rawValue: "051")!.description() )
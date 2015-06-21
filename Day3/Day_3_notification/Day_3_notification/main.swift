//
//  main.swift
//  Day_3_notification
//
//  Created by 한상현 on 2015. 6. 18..
//  Copyright (c) 2015년 한상현. All rights reserved.
//

import Foundation

let notiCenter = NSNotificationCenter.defaultCenter()

let NotiName = "CustomNotification"


class MyClass : NSObject {

    func handleNoti(noti : NSNotification){
        println("알림 발생!")
    }
    
}

let obj = MyClass()
notiCenter.addObserver(obj, selector: Selector("handleNoti:"), name: NotiName, object: nil)

notiCenter.postNotificationName(NotiName, object: nil)

let noti = NSNotification(name: NotiName,object: obj)
notiCenter.postNotification(noti)


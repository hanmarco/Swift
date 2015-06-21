import Foundation

class MyClass{
    static var instance : MyClass!
    
    static func sharedInstance() -> MyClass {
    
        if nil == instance {
            instance = MyClass()
        }
        return instance
    }
    
    var value : Int = 0
}

func ==(lhs : MyClass , rhs : MyClass) -> Bool {
    return lhs.value == rhs.value
}

var obj1 = MyClass()
var obj2 = MyClass()
obj1 === obj2 //false

var obj3 = MyClass.sharedInstance()
var obj4 = MyClass.sharedInstance()
obj3 === obj4 //true

obj1 == obj2


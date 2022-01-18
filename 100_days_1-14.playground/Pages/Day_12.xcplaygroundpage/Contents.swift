//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
class MyVal {
    var a:String = "Rajaat"
}
let b = MyVal()
print(b.a)


//inherit method and super Init


class Employee{
    var hours: Int = 20
 
    init(hours:Int){
        self.hours = hours
    }
    func totaltime(){
        print("total hours we get will be \(hours)P")
    }
}

class Developer: Employee{
    var times: Int
    func time(){
        print("the Developer needs to work \(hours) hourse")
    }
    init(hours: Int,time: Int) {
        self.times = time
        super.init(hours: hours)
    }
}

class Worker: Employee{
    func work(){
        print("the worker needs to work \(hours) hourse")

    }
    override func totaltime() {
        print("infact we get this \(hours)")
    }
}

let dev = Developer(hours: 10,time: 23)
let worker = Worker(hours: 40)
dev.time()
print(
    dev.times
)
dev.totaltime()
worker.work()
worker.totaltime()

//User copy in classes because class is reference type

class User {
    var username = "Anonymous"

    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}

var aey = User()
var boy = aey.copy()
boy.username = "Andtrian"

print(aey.username)
print(boy.username)

//deinit in ios

class Car{
    var a:Int
    
    init(a:Int) {
        self.a = a
        print("id \(a) i'm alive")
    }
    deinit{
        print("user id \(a) is dead")
    }
}
var users = [Car]()
for i in 1...3 {
    let user = Car(a: 12)
    print("user \(user.a) is in control")
    users.append(user)
}
print("Items was added")
users.removeAll()
print("List is clear")

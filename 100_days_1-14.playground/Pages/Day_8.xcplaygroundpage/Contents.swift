//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
enum PasswordError: Error {
    case short, obvious
}

func passCheck(_ password: String) throws ->String {
    if password.count < 5{
        throw PasswordError.short
    }
    if password == "12345" {
        throw PasswordError.obvious
    }
    if password.count<8{
        return "OK"
    }else if password.count < 10{
        return "GOOD"
    }else{
        return "Excelleny"
    }
}
let string = "123456789"

do {
    let result = try passCheck(string)
    print("Password rating: \(result)")
} catch {
    print("There was an error.")
}

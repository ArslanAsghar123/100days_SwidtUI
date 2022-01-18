//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"


// optional value and unwrapping it

var vall: String?

print(vall ?? "value")


// simple dictionary

var opposite = [
    "red":"color",
    "blue":"color"
]
let getVal = opposite["brown" ,default: "no color Exiest"]


//Option unwrapping by if let method

let opt: String? = greeting

if let opt2 = opt{
    print("the value is \(opt2)")
}else{
    print("there is no value")
}

//call function without unwrapping is false and we use if let approach

func ranNum(number: Int) -> Int{
    number * number
}

var number:Int? = nil
if let number = number{
    print(ranNum(number: number ))
}else{
    print("there is no data")
   
}


//unwrape using guard let

func guardVal(of number:Int?){
    guard let number = number else {
        print("No value in it")
        return
    }
print("\(number) x \(number) = \(number * number)")
}

let ranNumb = guardVal(of: nil)

var simpleArray: [String] = ["a","b"]

//optional chaining

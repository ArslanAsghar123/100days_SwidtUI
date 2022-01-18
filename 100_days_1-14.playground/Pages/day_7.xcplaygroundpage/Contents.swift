//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func sameString(a:String , b:String)  {
    if(a.sorted() == b.sorted()){
        true
    }else{
        false
    }
}
 sameString(a: "abc", b: "cza")

//2nd method
func sameStrings(a:String,b:String)-> Bool{
     a.sorted() == b.sorted()
}
let c = sameStrings(a: "abc", b: "bca")
print(c)

//next return type example

func pythagoreis(a:Double,b:Double)->Double{
    sqrt(a*a+b*b)
}
let d = pythagoreis(a: 3, b: 4)
print(d)

//tuple and its typees
func tupleExample() -> (firstName:String,secondName:String){
    (firstName:"arslan",secondName:"asghar")
}

let var1 = tupleExample()
print("\(var1.firstName) and \(var1.secondName)")
func tupleExample2() -> (firstName:String,secondName:String){
    ("arslan","asghar")
}
let var2 = tupleExample()
print("\(var2.secondName) and \(var2.1)")
let (firstName,secondName) = tupleExample()
print("\(firstName)")


//return arrays and dictionaries

func arr () -> [String:String]{
    ["name":"Arslan","last":"Asghar"]
}
let getImage = arr()
print("\(getImage["name", default: ""])")



func tupleExample3() -> (String,String,String,String,String,String,String){
    ("thu","fri","sat","sun","mon","tue","wed")
}
let var5 = tupleExample3()
let fac = 7
print(fac)
print("\(var5.3)")

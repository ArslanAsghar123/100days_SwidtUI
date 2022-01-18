//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"


enum WeekDay { case monday,tuesday,wednesday,thrusday,friday }

//Condition Statements
var username = ""
if username.count == 0 {
print("no value")
    username="boota"

}else{
    username="Akhtar"
}

//an example for if else and else if condition by using & And | operator

var a = 200
var b = 400


if a > b || b > 400 {
    print("this condition true")
}
else if a<b && b <= 400 {
    print("the value of b \(b)")
}
else{
    print("condition false")
}

//Switch statement

var day = WeekDay.monday

switch day
    
{
case .monday:
    print("today is monday")
case .tuesday:
    print("today is tuesday")
case .wednesday:
    print("Today is Wednesday")
default:
    print("Errror in printing")
}

//Ternary Operators

let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")

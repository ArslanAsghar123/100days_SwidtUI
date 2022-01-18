//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//Loop [For Loop, While]

//loop from 1 to 100 find multiple of 3 and 5 and if % 3 = fizz and if % 5 = buzz and if % 3 & % 5 = FizzBuzz

for i in 1...100{
    if(i % 5 == 0 && i % 3 == 0){
        print("\(i) should print FizzBuzz")
    }else if(i % 3 == 0){
        print("\(i) should print Buzz")
    }else if(i % 5 == 0){
        print("\(i) should print Fizz")

    }
    
    else{
        print("\(i) should print \(i)")
    }
}
    
//while loop
var a = 30

while a > 0{
    print("countdown \(a)")
    a -= 1
}

var roll = 0

while roll != 15{
    roll = Int.random(in : 1...20)
    print("i rolled to \(roll)")
}
print("we got 15")

//get exact date

var days = [1:"wed",2:"Thu",3:"Fri",4:"Sat",5:"Sun",6:"Mon",7:"Tue"]
print(days.keys)
var randomInt = 8
var guessday = randomInt % 7
print("calculated day is \(days[guessday,default: "monday"])")

//for loop and table of 7

for i in 1...10{
    print("the table of 7 x \(i) = \(7 * i)")
}
//for loop table of first 15 numbers from 2 to 15

for i in 2...15{
    for j in 1...10{
        print(" \(i) x \(j) = \(i*j)")
    }
}

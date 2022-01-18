//: [Previous](@previous)

import Foundation

//Arrays with declaration and type safety and have ordered data
var random = Array<String>()
random.append("the gem")
print(random.count)
print(random.remove(at: 0))
print(random.count)

//Dictionaries
let dictData = [
    "name":"Arslan",
    "class":"Elite"
]
print(dictData["name", default: "Default"])

var dict2 = [String: Int]()
dict2["add"] = 27
dict2["remove"] = 5
dict2["multiply"] = 8
print(dict2["add",default: 23])

//sets
//sets probably faster than array with unordered data
var simpleSet = Set([
    12,3212,23131,123,12,12
])
print("Sets \(simpleSet.count)")

//Enums 
enum WeekDay { case monday,tuesday,wednesday,thrusday,friday }
var days = WeekDay.monday
days = .friday

//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

struct Album {
    let title: String
    let artist: String
    let year: Int

    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}


let val =  Album(title: "nothing", artist: "nothing", year: 2018)
let val2 =  Album(title: "nothing2", artist: "nothing3", year: 2019)

print(val.year)
print(val2.year)

val.printSummary()

struct employee{
    let name: String
    var total : Int
    var totalVacation = 0
    
    var remaining:Int{
        get{
            total - totalVacation
        }
        set{
            total = totalVacation + newValue
        }
    }
    
//    mutating func takeVacation(days: Int){
//        if remainingVacation > days
//        {
//            remainingVacation -= days
//            print("you can take vacation")
//        }else{
//            print("out of vacation")
//        }
//    }
}
var value = employee(name: "Arslan",total: 20)
value.totalVacation += 4
value.remaining = 5
print(value.total)

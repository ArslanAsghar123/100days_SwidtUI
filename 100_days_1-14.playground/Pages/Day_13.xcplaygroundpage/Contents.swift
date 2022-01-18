
import SwiftUI
import Foundation

protocol Vehicle {
    var name: String {get}
    var distance: Int {get set}
    func measureDistance (for distance: Int) -> Int
    func distance (distance: Int)
}

struct Car: Vehicle {
    var name: String = "car"
    var distance: Int = 12
    
    func measureDistance(for distance: Int) -> Int {
        distance / 50
    }
    
    func distance(distance: Int) {
        print("total distance cover \(distance)")
    }
    
    
}
struct Bike: Vehicle {
    var name: String = "bike"
    var distance: Int = 12
    
    func measureDistance(for distance: Int) -> Int {
        distance / 10
    }
    
    func distance(distance: Int) {
        print("total distance cover \(distance)")
    }
    
    
}
func commute(disance: Int, using vehicle:Vehicle){
    if vehicle.measureDistance(for: disance) < 100
    {
        print("vehicle is too slow")
    }else {
        vehicle.distance(distance:disance)
    }
    
}

func estimatedValue(using vehicles: [Vehicle] , distance:Int){
    for vehicle in vehicles{
        let estimate = vehicle.measureDistance(for: distance)
        print("\(vehicle.name):\(estimate) has covered total \(distance) km ")
    }
}
let car = Car()
let bike = Bike()

estimatedValue(using: [car,bike], distance:100)

commute(disance: 100, using: bike)

//Opaque return types
func someData() -> some Equatable{
    Int.random(in: 1...5)
    
}
func someBool() -> some Equatable {
    Bool.random()
}

print(someData() == someData())

//extensions

extension Double {
    func calculateCelcius() -> Double{
        return ((self - 32) / 1.8)
    }
    func calculateFarhenhite()-> Double{
        return ((self * 1.8) + 32)
    }
}

var cel:Double = 32.0
var far:Double = 45.0
print(cel.calculateCelcius())

//protocol extensions

protocol Building{
    var rooms:Int {get set}
    var cost:Int {get set}
    var agent:String{get}
    func summary ()
}

extension Building{
    func summary(){
        print("agent \(agent): has sold this building having \(rooms) at \(cost)$")
    }
}

struct House: Building{
    

    var rooms: Int = 233
    let agent: String = "Jack"
    var cost: Int = 200_000
    
   
}
struct Office: Building{
    

    var rooms: Int = 233
    let agent: String = "Bauwer"
    var cost: Int = 200_000
    
   
}

let summary = House(rooms: 23, cost: 100_000)
summary.summary()
let summary2 = House(rooms: 23, cost: 100_000)

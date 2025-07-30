import UIKit

struct Person {
    var name: String //normal initializers
    var age: Int
    
    func greeting(_ name: String) {
        print("Good Morning \(name)")
    }
}

let person = Person (
    name: "Saatvik",
    age: 21
)

print(person.self)

let personn = Person(name: "Farjad", age: 66)
personn.greeting(personn.name)


//constructors
let string1 = String.init()
var string2 = String()

let int1 = Int.init()
var int2 = Int()


struct Odometer {
    var count = Int() //memberwize initializer (having a default initializer)
    var x:Int
}

let odo = Odometer(x:31)
print(odo.self)

let odoo = Odometer(x:21)
print(odoo.self)


struct Temp {
    var cel: Double
}

let temp = Temp(cel: 30)

print(temp.cel)


//custom initializers
struct Temperature {
    var celsius: Double
    
    init(celsius: Double) {
        self.celsius = celsius
    }
    
    /*
     init(cels: Double) {
        celsius = cels
     }
     */
    
    init(fahreniet: Double) {
        celsius = (fahreniet - 32) / 1.8
    }
}

let currTemp = Temperature(celsius: 18.5)
let boiling = Temperature(fahreniet: 212)

print(currTemp.celsius)
print(currTemp.self)

print(boiling.celsius)
print(boiling.self)

struct Name {
    var name: String
    var age: Int
    
    
    init() {
    name = ""
    age = 0
    }
}

var name = Name()

print(name)

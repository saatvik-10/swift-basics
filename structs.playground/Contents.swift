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

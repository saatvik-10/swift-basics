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

struct Size {
    var height: Double
    var width: Double
    
    var area: Double { //computed property i.e. memory won't get allocated, its just temporary
        height * width
    }
    mutating func inc()->Double{
        area + 1
    }
    
    func perameter() -> Double {
        return 2 * (width + height)
    }
}

var someSize = Size (
    height: 12.4,
    width: 52.1
)

//print("Area is: \(someSize.area())")
//print("Perameter is: \(someSize.perameter())")

print(someSize.inc())
print(someSize.area)
print(someSize.inc())

struct Counter {
    var count: Int = 0
    
    mutating func increment() -> Int { //mutating just like mut in rust
        return count + 1
    }
    
    mutating func decrement() -> Int {
        return count - 1
    }
    
    mutating func reset() -> Int {
        return self.count
    }
    mutating func changeDef() {
        self.count = 11
        print(count)
    }
}

var counter = Counter();

print("Increment is: \(counter.increment())")
print("Decrement is: \(counter.decrement())")
print("Reset is: \(counter.reset())")

counter.changeDef()
var new1 = Counter()
var new2 = counter
print(new1.count)
print(new2.count)

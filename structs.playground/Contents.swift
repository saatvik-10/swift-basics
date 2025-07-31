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


//property observers
struct StepCounter {
        var totalSteps: Int = 50 {
            willSet {
                print("About to set total steps to \(newValue)")
            }
            didSet {
                if totalSteps > oldValue {
                    print("Added \(totalSteps - oldValue) Steps")
                }
            }
        }
    mutating func function() {
        totalSteps += 1
    }
}

var final = StepCounter()
final.totalSteps = 120
final.totalSteps = 140
final.totalSteps = 140
final.function()


//type properties and methods
struct Tempp {
    static let boilingPoint = 100
    //@MainActor static var boilingPoint = 100 -> Remember this @MainActor, used with var in static....runs the commnad on the main thread
    
    static func convertToFahrenheit(_ tempInF: Double) -> Double {
        (((tempInF - 32) * 5) / 9)
    }
}

let boilingPoint = Tempp.boilingPoint
let currentTemp = Tempp.convertToFahrenheit(99)


//copying -> STRUCTS ARE VALUE TYPE
var someSizes = Size(height: 123, width: 321)
var anotherSizes = someSizes //even though copying, memory won't be allocated here. wheever we do any change then only the memory will be created

print(someSizes)
print(anotherSizes)

//self is required in custom initializers only and not everywhere just like RUST HAS SELF INSIDE TRAITS

import UIKit

struct Student {
    var name: String = "Student"
}

var myStudent: Student = Student()

class Vehicle {
    var name: String = "Saativk"
}

var myVehicle: Vehicle = Vehicle()
myVehicle.name = "Swift"

print(myVehicle.name)

class Person {
    let name: String
    init(name: String) {
        self.name = name
    }
    func sayHello() {
        print("Hello World from \(name)")
    }
}

var person = Person(name: "Saatvik")

person.sayHello()

class Vehicle1 {
    var currSpeed = 84.0
    
    var description: String {
        return "Current Speed: \(currSpeed)"
    }
    
    func makeNoise() {
        print("Vroom Vroom")
    }
}

class bicycle: Vehicle1 {
        var hasBasket: Bool = false
}

class tandem: bicycle {
    var numberOfSeats: Int = 2
}

class Train: Vehicle1 {
    override func makeNoise() {
        print("Chuk Chuk Chuk")
    }
}

let train = Train()
train.makeNoise()

class Car: Vehicle1 {
    override var description: String {
        "Train is moving at \(currSpeed), making a \(makeNoise())"
        //to print makeNoise within the aboce line, return the string type in makeNoise instead
    }
}

let car = Car();
print(car.description)


class Bike {
    var speed: Int
    var engine: String
    
    init(speed: Int, engine: String) {
        self.speed = speed
        self.engine = engine
    }
}

var myBike: Bike = Bike(speed: 20, engine: "V4")

class SuperBike: Bike {
    var topSpeed: Int
    
    init(speed: Int, topSpeed: Int, engine: String) {
        self.topSpeed = topSpeed
        super.init(speed: speed, engine: engine)
    }
}

var mySuperBike: SuperBike = SuperBike(speed: 200, topSpeed: 300, engine: "V6")
print(mySuperBike.topSpeed, mySuperBike.engine, mySuperBike.speed)

import UIKit

//enum without types
enum CoffeeSize {
    case small, medium, large
}

var coffeeSize: CoffeeSize = .medium //'.' is called type inference used to access the options inside the enum

switch coffeeSize {
    case .small:
        print("Small size coffee has been ordered")
    case .medium:
        print("Medium size coffee has been ordered")
    case .large:
        print("Large size coffee has been ordered")
}

//comparison can be done as well using if else

enum Genre {
    case action, romance, comedy, thriller
}

struct Movie {
    var title: String
    var releaseYear: Int?
    var genre: Genre
}

let myMovie = Movie(title: "Shutter Island", releaseYear: 2010, genre: .action)

if let releaseYear = myMovie.releaseYear {
    print("Movie was released in \(releaseYear)")
} else {
    print("No info about the movie release year")
}



//enums with type
enum CoffeeType: String {
    case latte = "Creamy Latte"
    case cappuccino = "Cappuccino"
    case macchiato = "Macchiato"
}

struct CoffeeOrder {
    var size: CoffeeSize
    var type: CoffeeType
    var payment: PaymentMethod
}

func myOrder(_ order: CoffeeOrder) {
    print("You ordered a \(order.size) \(order.type.rawValue) with \(order.payment.description)")
}

let myCoffeeOrder = CoffeeOrder(size: .medium, type: .latte, payment: .applePay(deviceId: 3249587234987))
myOrder(myCoffeeOrder)

enum PaymentMethod {
    case cash
    case applePay(deviceId: Int)
    case creditCard(number: Int, expirationDate: String)
    
    var description: String {
        switch self {
        case .cash:
            return "with cash"
        case let .applePay(deviceId):
            return "with Apple Pay Id \(deviceId)"
        case let .creditCard(number, expirationDate):
            return "with credit card (number: \(number), expiration date: \(expirationDate))"
        }
    }
}


enum NewCoffeeSize: String, CaseIterable {
    case small = "Small size"
    case medium = "Medium size"
    case large = "Large size"
}

let numberOfChoices = NewCoffeeSize.allCases.count
print(numberOfChoices)


enum Planet: Int {
    case mercury = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}

let bestPlanet: Planet = .Jupiter
print(bestPlanet.rawValue)

//for recursion
indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}

let num1 = ArithmeticExpression.number(5)
let num2 = ArithmeticExpression.number(4)
let num = ArithmeticExpression.number(2)

let additionExpression = ArithmeticExpression.addition(num1, num2)
let multiplicationExpression = ArithmeticExpression.multiplication(num, additionExpression)

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}

print(evaluate(multiplicationExpression))

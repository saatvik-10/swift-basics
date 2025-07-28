import UIKit

let greeting = "Hello, playground"

//mutable -> var, immutable -> let
let hWorld: String = "Hello World"
var word = hWorld

let check = """
hello world
testing the three quotes thing
"""

let test = "Hello there from \"Swift\""

if test.isEmpty {
    print("empty")
} else {
    print("not empty")
}

//interpollation
let name = "Saatvik"
print("Hello \(name)")

print("Sum of 6 + 5 is \(6 + 5)")

let books = 4
let price:Double = 399.99
let tax:Double = 12
print("Total Books: \(books)\nPrice of each book: \(price) Rs.\nTax: \(tax)%\nTotal Price: \((Double(books) * (price)) + ((Double(books) * (price)) * (tax / 100)))")

let l = name.lowercased()
let r = name.uppercased()
print("\(l), \(r)")

let password = "1234"
password.hasSuffix("3, 4")
password.hasPrefix("1, 2")

let learning = "I am learning Swift"

if learning.contains("Swift") {
    print("Loving it")
}

if password.count < 8 {
    print("Password is too short")
} else {
    print("All ok with the password")
}

let operation = "Success"
switch operation.lowercased() {
    case "success":
        print("Learning swift")
    
    default:
        print("Error 404")
}

let emoji = "😀"
print("I am doing Swift \(emoji)")

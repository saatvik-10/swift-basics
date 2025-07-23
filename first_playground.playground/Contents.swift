import UIKit

var greeting = "Hello, playground"

func add(a: Int, b: Int) -> Int {
    let sum = a + b
    return sum
}

add(a: 4, b: 5);


//define a constant
let name = "Saatvik"
print(name)
// constant is easy to access as low level memory n also u dont wanna change it ever
var age = 38
print(age)
age = 21
print(age)

var isStudent = true

let defaultScore = 100
var playerFirstScore = defaultScore
var playerSecondScore = defaultScore
print(playerFirstScore)
print(playerSecondScore)

playerFirstScore = 500
print("Player First Score = \(playerFirstScore)")

var Ω = 5;
print(Ω)

struct Person {
    let first_name: String
    let last_name: String

    func hello() {
        print("The name is \(self.first_name) \(self.last_name)")
        
    }
}

let person = Person(first_name: "Saatvik", last_name: "Madan")
person.hello()

let PlayerName = "Julian"
var playerScore = 1000
var gameOver = false
var result = 95.5
//TYPE SAFETY
//PlayerName = 123

//Type annotation

var cityName: String = "Pune"
var char: Character = "a"
var f: Float = 30
print(f)

//type annotation b4 assigning a value to any var or let

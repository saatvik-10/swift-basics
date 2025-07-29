import UIKit

func add(a: Int, b: Int) -> Int {
    let sum = a + b
    return sum
}

print(add(a: 5, b: 6))




func greet(name: String) -> String {
    return name
}

print("Good Morning " + greet(name: "Saatvik"))




func rec(a: Int) -> Int {
    return function(a: a)
}

func function(a: Int) -> Int {
    if a == 1 {
        return 1
    }
    return a + rec(a: a - 1)
}

print(rec(a: 5))




func sayHello(to person: String, and anotherPerson: String) -> String {
    var res: String = "Hello \(person) and \(anotherPerson)"
    return res
}

print(sayHello(to: "ABC", and: "PQR"))




func sub(_ a: Int, _ b: Int) -> Int {
    a - b
}

print(sub(3, 5)) //no need to pass the arguments if '_ ' passed in the variable names




func increment(_ val: Int, by num: Int) -> Int {
    return val + num
}

print(increment(10, by: 33))




func userInfo(name: String, loc: String = "Akola") -> String {
    return "\(name) lives in \(loc)"
}

print(userInfo(name: "Sf"))




func function(min: Int, max: Int) -> (min: Int, max: Int) {
    return (min, max)
}

var res = function(min: 4, max: 24)
    print(res.min)
    print(res.max)




func pattern(_ n: Int) {
    for i in 1...n {
        for j in 1...n {
            print("* ", terminator: "")
        }
        print()
    }
}

pattern(5)

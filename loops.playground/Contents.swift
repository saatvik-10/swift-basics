import UIKit

for i in 0...5 {
    print(i)
}

let name = ["Name", "Age", "Place"]
for props in name {
    print(props)
}

for letter in "ABCDE" {
    print("\(letter)")
}

for letter in "ABCDE".enumerated() { //gives index as well
    print("\(letter)")
}

let myDict = ["Abc": 123, "Mno": 456, "Pqr": 789]
for i in myDict {
    print(i) //will give (key, value)
}

let myDict1 = [1: "a", 2: "b", 3: "c"]
for (i, j) in myDict1 {
    print(i, j) //direct values
}

let minInterval = 5
for i in stride(from: 0, to: 20, by: minInterval) { //runs to final value - 1
    print(i)
}

for i in stride(from: 0, through: 20, by: minInterval) { //runs to the final value
    print(i)
}

let test = 100
var x = 1
while x <= test {
    if test % x == 0 {
        print(x)
    }
    x += 1
}

for i in -2...2 {
    print(i)
    if i == 0 {
        break
    }
}

var count = 0 //with while no execution at all due to the condition check
repeat {
    print(count)
    count += 1
} while count > 0

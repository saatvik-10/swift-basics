/*:
## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable
 
 Create a `Human` class with two properties: `name` of type `String`, and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */
import Foundation
class Human:CustomStringConvertible,Equatable, Comparable,Codable {
    static func < (lhs: Human, rhs: Human) -> Bool {
        return lhs.age < rhs.age
    }
    static func >= (lhs: Human, rhs: Human) -> Bool {
        return lhs.age >= rhs.age
    }
    static func == (lhs: Human, rhs: Human) -> Bool {
        return lhs.age == rhs.age && lhs.name == rhs.name
    }
    
    var description: String {return "human name is \(name) and age is \(age)"}
    
    let name: String
    let age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
var human1 = Human(name: "Saatvik", age: 21)
var human2 = Human(name: "Pavneesh", age: 20)
 
//:  Make the `Human` class adopt the `CustomStringConvertible` protocol. Print both of your previously initialized `Human` objects.
print(human1)
print(human2)
//:  Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to eachother (using `==`). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to eachother (using `!=`).
if human1 == human2 {
    print("they are equal")
}

if human1 != human2 {
    print("they are not equal")
}

//:  Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
var human3 = Human(name: "Saatvik", age: 21)
var human4 = Human(name: "Pavneesh", age: 25)
var People: [Human] = [human1, human2, human3, human4]
var sortedPeple = People.sorted()
for i in sortedPeple {
    print(i.name)
    print(i.age)
    
}

//:  Make the `Human` class adopt the `Codable` protocol. Create a `JSONEncoder` and use it to encode as data one of the `Human` objects you have initialized. Then use that `Data` object to initialize a `String` representing the data that is stored, and print it to the console.
let human6 = Human(name: "saatvik", age: 21)
let jsonEncoder = JSONEncoder()
if let jsonData = try? jsonEncoder.encode(human6), let jsonString = String(data: jsonData, encoding: .utf8) {
    print(jsonData)
}

/*:
page 1 of 5  |  [Next: App Exercise - Printable Workouts](@next)
 */

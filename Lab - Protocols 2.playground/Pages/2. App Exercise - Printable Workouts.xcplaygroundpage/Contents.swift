/*:
## App Exercise - Printable Workouts

 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 The `Workout` objects you have created so far in app exercises don't show a whole lot of useful information when printed to the console. They also aren't very easy to compare or sort. Throughout these exercises, you'll make the `Workout` class below adopt certain protocols that will solve these issues.
 */
import Foundation
class Workout:CustomStringConvertible,Equatable, Comparable, Codable {
    static func < (lhs: Workout, rhs: Workout) -> Bool {
        lhs.identifier < rhs.identifier
    }
    
    static func == (lhs: Workout, rhs: Workout) -> Bool {
        lhs.steps == rhs.steps && lhs.type == rhs.type
    }
    
    var description: String {return "you did \(steps) by \(type)"}
    
    var steps: Int
    var type: String
    var identifier: Int
    init(steps: Int, type: String, identifier: Int) {
        self.steps = steps
        self.type = type
        self.identifier = identifier
    }
    
}

//:  Make the `Workout` class above conform to the `CustomStringConvertible` protocol so that printing an instance of `Workout` will provide useful information in the console. Create an instance of `Workout`, give it an identifier of 1, and print it to the console.
var workout1 = Workout(steps: 10000, type: "Running", identifier: 1)
print(workout1)

//:  Make the `Workout` class above conform to the `Equatable` protocol. Two `Workout` objects should be considered equal if they have the same identifier. Create another instance of `Workout`, giving it an identifier of 2, and print a boolean expression that evaluates to whether or not it is equal to the first `Workout` instance you created.
var workout2 = Workout(steps: 10000, type: "Walking", identifier: 2)
print(workout1 == workout2)
/*:
 Make the `Workout` class above conform to the `Comparable` protocol so that you can easily sort multiple instances of `Workout`. `Workout` objects should be sorted based on their identifier. 
 
 Create three more `Workout` objects, giving them identifiers of 3, 4, and 5, respectively. Then create an array called `workouts` of type `[Workout]` and assign it an array literal with all five `Workout` objects you have created. Place these objects in the array out of order. Then create another array called `sortedWorkouts` of type `[Workout]` that is the `workouts` array sorted by identifier. 
 */
var workout3 = Workout(steps: 10000, type: "Running", identifier: 3)
var workout4 = Workout(steps: 10000, type: "Running", identifier: 4)
var workouts = [workout1, workout2, workout3, workout4]
var SortedWorkouts = workouts.sorted()
for i in SortedWorkouts{
    print(i.identifier)
    print(i.type)
    print(i.steps)
}

//:  Make `Workout` adopt the `Codable` protocol so you can easily encode `Workout` objects as data that can be stored between app launches. Use a `JSONEncoder` to encode one of your `Workout` instances. Then use the encoded data to initialize a `String`, and print it to the console.
let workout6 = Workout(steps: 10000, type: "fast walking", identifier: 10)
let jsonEncoder = JSONEncoder()
if let jsonData = try? jsonEncoder.encode(workout6), let jsonString = String(data: jsonData, encoding: .utf8) {
    print(jsonData)
}

/*:
[Previous](@previous)  |  page 2 of 5  |  [Next: Exercise - Create a Protocol](@next)
 */

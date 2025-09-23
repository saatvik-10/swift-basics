/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
let items: [Any] = [7.8, "Apple", 4.55, false, 33, "Banana"]
for item in items {
    print(item)
}
//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for item in items {
    if let integerValue = item as? Int {
        print("The integer has a value of \(integerValue)")
    }
    else if let doubleValue = item as? Double {
        print("The double has a value of \(doubleValue)")
    }
    else if let stringValue = item as? String {
        print("The string is \(stringValue)")
    }
    else if let booleanValue = item as? Bool {
        print("The boolean is \(booleanValue)")
    }
}

//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
let myDictionary: [String: Any] = ["pi": 3.14, "isStudent": true, "myAge": 20, "subject": "Science"]

//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total: Double = 0
for (key, value) in myDictionary {
    if let integerValue = value as? Int {
        total += Double(integerValue)
    }
    else if let doubleValue = value as? Double {
        total += doubleValue
    }
    else if let stringValue = value as? String {
        total += 1
    }
    else if let booleanValue = value as? Bool {
        total += booleanValue ? 2 : -3
    }
}
print(total)
//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0
for (key, value) in myDictionary {
    if let integerValue = value as? Int {
        total += Double(integerValue)
    }
    else if let doubleValue = value as? Double {
        total += doubleValue
    }
    else if let stringValue = value as? String, let numberValue = Double(stringValue) {
        total += numberValue
    }
    
}
print(total)
/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */

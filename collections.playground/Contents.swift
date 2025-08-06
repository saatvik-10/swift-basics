import UIKit

var name: [String] = ["Saatvik", "Hello"]
print(name[0])
print(name[1])

name[1] = "sf"
name.append("hola")
name.insert("madan", at: 1)
name[0].append(" 10")

name += ["messi", "cr7"]

name.remove(at: 3)
//name.removeAll()

print(name)

var nums: [Int] = [2, 3, 4, 4, 5, 5, 6]
if nums.contains(4) {
    print("Hello")
} else {
    print("Bye")
}


//types to create an array
var arr : [Int]
var arr1: Array<Int> = []
var arr2 = [Int]()

var myArr = [Int](repeating: 69, count: 10)
print(myArr)
myArr.removeLast() //returns only the last element while drop last will show the remaining array after removing the last element but the original array wont be affected, hv to take a different variable for the drop last to work properly
myArr.removeLast(4) //similarly removeFirst
print(myArr)

if nums.isEmpty {
    print("Empty")
} else {
    print("Not Empty")
}

print(name.count)

print(nums + myArr) //concatination

var newArr  = [nums, myArr]
print(newArr)
print(newArr[0][1])
print(newArr[1][2])


//ways to create a map
var myDict1 = [String: Int]()
var myDict2 = Dictionary<String, Int>()
var myDict3 : [String: Int] = [:]
var myDict4 = ["Abc": 123, "Pqr": 321, "Mno": 213]
var myDict5 = [123 : "abc"]

print(myDict4)
myDict4["Mno"] = 678
print(myDict4)
print(myDict4.keys)
print(myDict4.values)
print(myDict4.count)
print(myDict4.removeValue(forKey: "Abc") ?? "") //GIVE THE ELEMENT'S VALUE
print(myDict4.first ?? "")
print(myDict4.reversed())
myDict4["Mno"] = 345
print(myDict4)
var temp1 = myDict4.updateValue(456, forKey: "Mno") ?? 0
var temp3 = myDict5.updateValue("mno", forKey: 321) ?? "default"
    temp3 = myDict5.updateValue("mno", forKey: 321) ?? "default"
    temp3 = myDict5.removeValue(forKey: 123) ?? ""
var temp2 = myDict4.updateValue(897, forKey: "Efg") ?? 0 //at first, will get inserted and the output of value will be 0. In the second run the value will display
temp2 = myDict4.updateValue(897, forKey: "Efg") ?? 0
print(myDict4)
myDict4.removeValue(forKey: "xyz")
print(myDict4.removeValue(forKey: "xyz") ?? " ",terminator: "")
print(temp1, temp2, temp3)
print(myDict4["Mno"] ?? "")

enum PersonValues{
    case name(String)
    case age(Int)
    case location(String)
}

var myPerson: [String: PersonValues] = ["Name": .name("sf"), "Age": .age(69), "Location": .location("Akola")]
print(myPerson)

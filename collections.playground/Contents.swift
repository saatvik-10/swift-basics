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

import UIKit

var globalVar = 50
print(globalVar)

func printNum() {
    var num = 100
    print(num)
}

printNum()




var age = 25

@MainActor //used when a function is trying to access a global variable, we hv to annotate it (annotation concept)
func printAge() {
    print(age)
}




func test() {
    for i in 1..5 {
        print(i)
    }
    print(i)
}

test(

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
    for index in 1...5 { //while trying to access a variable via print statement if its outside the scope, it will always return a function reference
        print(index)
    }
    print(index)
}

test()




//in variable shadowing, if two variables are defined with a same name. If inside function, local give priority else global given priority

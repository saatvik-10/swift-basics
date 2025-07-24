import UIKit

let x = 100
if x >= 101 {
    print("Hello")
} else {
    print("Hi")
}


let num = x < 99 //(Boolean)


let bool = false
if !bool {
    print("false")
} else {
    print("true"  )
}


if x == 101 || !bool {
    print("Yes")
} else {
    print("No")
}


if x == 100 && !bool {
    print("Yes")
} else {
    print("No")
}


//swift has a concept called "FALL THROUGH"
//switch case with no break statment is called WITHOUT FALL THROUGH
let switchCase1 = 1
switch switchCase1 {
    case 1:
        print("Cheyeahhhhh")
        
    case 2:
        print("Hi")
        
    default:
        print("Letsgo")
}

let switchCase2 = 3
switch switchCase2 {
    case 1:
        print("Cheyeahhhhh")
        fallthrough //makes the next case executable too
        
    case 2:
        print("Hi")
        fallthrough
    
    default:
        print("Letsgo")
}

//it is not mandatory to use a default case inside switch statement, that need is eliminated while using a enum
enum test {
    case day
    case night
}

var time: test = .day
print(time)

switch time {
    case .day:
        print("Day Time")
        
    case .night:
        print("Night Time")
}

//multi-condition swtich statement
let vowels = "a"
switch vowels {
    case "a", "e", "i", "o", "u":
        print("A vowel")
    default:
        print("Not a vowel")
}

//range switch cases
let distance = 70
switch distance {
    case 65...75:
        print("Ye rha bhai")
    case ...64:
        print("Mil gya")
    default:
        print("Nhi mila yrr")
}

let a = 15
let b = 10

a > b ? print("a > b") : print("b > a")

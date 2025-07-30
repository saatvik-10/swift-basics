import UIKit


//calculate area
func calculateAreaLength(_ length: Double, _ width: Double) -> Double {
    let area = length * width
    return area
}
calculateAreaLength(20, 40)


//reverse a string
func reverse(string: String) -> String {
    var chars = Array(string)
    var i = 0
    var j = string.count - 1
    
    while i < j {
        chars.swapAt(i, j)
        i += 1
        j -= 1
    }
    return String(chars)
}
reverse(string: "hello")


//factorial using recursion
func fact(n: Int) -> Int {
    return function(n: n);
}

func function(n: Int) -> Int {
    var res: Int = 0
    
    if n == 1 {
        return 1
    } else {
        res = n * fact(n: n - 1)
    }
    return res
}
fact(n :5)


//swap 2 values
func swapValue(a: inout Int, b: inout Int) -> (a: Int, b:Int) {
    var temp: Int
    temp = a
    a = b
    b = temp
    
    return(a, b)
}
var x = 10
var y = 20

swapValue(a: &x, b: &y)


//if string is a palindrome
func palindrome(string: String) -> Bool {
    var chars = Array(string.lowercased())
    for i in 1...chars.count / 2 {
        if chars[i] != chars[chars.count - i - 1] {
            return false
        }
    }
    return true
}
palindrome(string: "radar")


//counting total vowels
func countVowels(text: String) -> Int {
    let vowels = ["a", "e", "i", "o", "u"]
    var count = 0
    
    for char in text {
        if vowels.contains(String(char)) {
            count += 1
        }
    }
    return count
}
countVowels(text: "Rhythm")


//function power using recursion
func power(n: Int) -> Int {
    var res = 0
    
    if n == 0 {
        return 1
    }
    
    res = 2 * power(n: n - 1)
    
    return res
}
power(n: 6)

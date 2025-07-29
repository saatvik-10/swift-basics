/*:
## Exercise - Return Values

 Write a function called `greeting` that takes a `String` argument called name, and returns a `String` that greets the name that was passed into the function. I.e. if you pass in "Sophie" the return value might be "Hi, Sophie! How are you?" Use the function and print the result.
 */
func greeting(name: String) -> String {
    "Hi, \(name)! How are you?"
}
greeting(name: "Ronaldo")
//:  Write a function that takes two `Int` arguments, and returns an `Int`. The function should multiply the two arguments, add 2, then return the result. Use the function and print the result.
func mad(_ a:Int, _ b:Int)-> Int{
    a * b + 2
}
mad(9,11)
/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Separating Functions](@next)
 */

import UIKit

var greeting = "Hello, playground"
// 1. creating basic closures

//creates a function without a name, and assigns that function to driving
let driving = {
    print("I'm driving in my car")
}
// it can be called like a regular function like
driving()

// 2. adding parameter to closure

let drive = { (place: String) in
    print("I'm going to \(place) in my car")
}
// differences between functions and closures is that you don’t use parameter labels when running closures. So, to call driving() now we’d write this:
drive("London")

// 3.Returning values from a closure
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
let message = drivingWithReturn("London")
print(message)

// 4. closures as parameters
let car = {
    print("I'm driving in my car")
}
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel(action: car)

// 5. Trailing closure syntax


func travell(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

// Because its last parameter is a closure, we can call travel() using trailing closure syntax like this:
travell() {
    print("I'm driving in my car")
}
// or eleminating the paranthesis
travell {
    print("I'm driving in my car")
}

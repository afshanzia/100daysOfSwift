import UIKit

var greeting = "Hello, playground"

// 1. Functions
// helps reuse code from different places
func example() {
    
}

example()

// 2. Accepting parameters
func square(number: [Int]) {
  //  print(number * number)
}

//  we expect to receive an Int called number. This name is used both inside the function when you want to refer to the parameter, but also when you run the function, like this:

square(number: 8)
// 3. returning values

func square(number: Int) -> Int {
    return number * number
}
let result = square(number: 5)
print(result)

// 4. Parameter labels
func sayHello(to name: String) {
    print("Hello, \(name)!")
}
sayHello(to: "Taylor")

// 5. omitting parameter labels

func greet(_ person: String) {
    print("Hello, \(person)!")
}
greet("Taylor")

// 6. Default parameters

func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}
// this c an be called in 2 ways
greet("Taylor")
greet("Taylor", nicely: false)

// 7. Variadic functions
// 8. Writing throwing functions
// 9. running throwing functions
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}
// 10. inout parameters

func doubleInPlace(number: inout Int) {
    number *= 2
}
var myNum = 10
doubleInPlace(number: &myNum)



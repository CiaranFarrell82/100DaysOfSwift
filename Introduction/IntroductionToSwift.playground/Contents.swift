import UIKit

/*
 * 100 Days of Swift - Day 1 🎉 ------------------------------------------------------------------
 * Topic: variables, simple data types, and string interpolation
 * 13th Feb 2021 📅
 */


// variables
var str = "Hello, playground"
str = "Goodbye"

// strings and integers
var age = 38
var population = 8_000_000

// multi-line strings
var str1 = """
This goes
over multiple
lines
"""

var str2 = """
This goes \
over multiple \
lines
"""

// doubles and booleans
var pi = 3.141
var awesome = true

// string interpolation
var score = 85
var str3 = "Your score was \(score)"
var results = "The test results are here: \(str3)"

// constants
let taylor = "swift"

// type annotations
let str4 = "Hello, playground"
let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true

/*
* 100 Days of Swift - Day 2 🎉 ------------------------------------------------------------------
* Topic: arrays, dictionaries, sets, and enums
* 14th Feb 2021 📅
*/

// arrays
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]
beatles[1]

// sets
let colors = Set(["red", "green", "blue"])

// tuples
var name = (first: "Taylor", last: "Swift")
name.0
name.first

// arrays vs sets vs tuples

// tuple
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")

// set
let set = Set(["aardvark", "astronaut", "azalea"])

// array
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

// dictonaries
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

heights["Taylor Swift"]

// dictionary default values
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

favoriteIceCream["Paul"]
favoriteIceCream["Charlotte"]

favoriteIceCream["Charlotte", default: "Unknown"]

// creating empty collections
var teams = [String: String]()

teams["Paul"] = "Red"

var results2 = [Int]()

var words = Set<String>()
var numbers = Set<Int>()

var scores = Dictionary<String, Int>()
var results3 = Array<Int>()

// enumerations (enums)
let result = "failure"
let result2 = "failed"
let result3 = "fail"

enum Result {
    case success
    case failure
}

let result4 = Result.failure

// enum asscociated values
enum Activity {
    case bored
    case running
    case talking
    case singing
}

enum Activity2 {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity2.talking(topic: "football")

// enum raw values
enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

let earth = Planet2(rawValue: 2)

enum Planet2: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

/*
* 100 Days of Swift - Day 3 🎉 ------------------------------------------------------------------
* Topic: operators and conditions
* 14th Feb 2021 📅
*/

// arithmetic operators
let firstScore = 12
let secondScore = 4

// add (+) & subtract (-)
let total = firstScore + secondScore
let difference = firstScore - secondScore

// multiply (*) & divide (/)
let product = firstScore * secondScore
let divided = firstScore / secondScore

let remainder = 13 % secondScore

// operator overloading
let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna "
let action = fakers + "fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles2 = firstHalf + secondHalf

// compound assignment operators
var score2 = 95
score2 -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

// comparison operators
let firstScore2 = 6
let secondScore2 = 4

firstScore2 == secondScore2
firstScore2 != secondScore2

firstScore2 < secondScore2
firstScore2 >= secondScore2

"Taylor" <= "Swift"

// conditions
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21 {
    print("Blackjack!")
}

if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

if firstCard + secondCard == 2 {
    print("Aces - lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

// combining conditions
let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}

// the ternary operator
let firstCard1 = 11
let secondCard2 = 10
print(firstCard1 == secondCard2 ? "Cards are the same" : "Cards are different")

if firstCard1 == secondCard2 {
    print("Cards are the same")
} else {
    print("Cards are different")
}

// switch statements
let weather = "sunny"

switch weather {
case "rain":
    print("Wrap up warm")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

// range operators
let outcome = 85

switch outcome {
case 0..<85:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

/*
* 100 Days of Swift - Day 4 🎉 ------------------------------------------------------------------
* Topic: Loops, loops and more loops
* 17th Feb 2021 📅
*/

// for loops
let count = 1...10

for number in count {
    print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]
for album in albums {
print("\(album) is on Apple Music")
}

print("Players gonna")

for _ in 1...5 {
    print("play")
}

// while loops
var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")

// repeat loops
var number2 = 1

repeat {
    print(number2)
    number2 += 1
} while number2 <= 20

print("Ready or not, here I come!")

repeat {
    print("This is false")
} while false

// exiting loops
var countDown = 10

while countDown >= 0 {
    print(countDown)
    countDown -= 1
}

print("Blast off!")

while countDown >= 0 {
    print(countDown)
    
    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }
    
    countDown -= 1
}

// exiting multiple loops
for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i)) * \(j) is \(product)")
    }
}

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
        
        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

// skipping items
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
    
}

// infinite loops
var counter = 0

while true {
    print(" ")
    counter += 1
    
    if counter == 273 {
        break
    }
}

/*
* 100 Days of Swift - Day 5 🎉 ------------------------------------------------------------------
* Topic: Functions, parameters and errors
* 17th Feb 2021 📅
*/






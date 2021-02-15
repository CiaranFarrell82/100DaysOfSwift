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




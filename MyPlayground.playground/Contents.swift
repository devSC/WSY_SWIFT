//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let individualScores = [75, 43, 103, 87, 98]
var teamSocre = 0
for score in individualScores {
    if score > 50 {
        teamSocre += 3
    } else {
        teamSocre += 1
    }
}
//teamSocre

var optionalString : String? = "hello"
optionalString = nil

var optionalName : String? = "John Appleaseed"
optionalName = nil
var greeting = "hello !"
if let name = optionalName {
    greeting = "hello, \(name)"
}


let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (kind, numbers) in interestingNumbers {
    kind
    numbers
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
largest

var n = 2
while n < 100 {
    n = n * 2
}
n

var m = 2
do {
    m = m * 2
} while m < 100

m

func greet(name: String, day: String) ->String {
    return "hello \(name), today is \(day)"
}

var my =  greet("bobby", "tuesday")

////使用元组来让一个函数返回多个值。该元组的元素可以用名称或数字来表示。
func calculateStatistics(scores: [Int]) ->(min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score;
    }
    
    return (min, max, sum)
}

let statistics = calculateStatistics([5, 3, 100, 3, 9])
statistics.sum
statistics.1

//函数可以带有可变个数的参数，这些参数在函数内表现为数组的形式：
func sumOf (numbers: Int...) ->Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

sumOf()
sumOf(42, 298, 20)


func averageOf (numbers: Int...) ->Int {
    var sum = 0
    var count = 0
    for number in numbers {
        sum += number
        count += 1
    }
    return sum/count
}

averageOf(28, 100, 29)


func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 25
    }
    
    add()
    return y
}
returnFifteen()

func makeIncrementer() -> (Int -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}

var increment = makeIncrementer()
increment(6)


func hasAnyMatches(list: [Int], condition: Int -> Bool) ->Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) ->Bool {
    return number < 10
}
var numbers = [20, 19, 8, 20]
hasAnyMatches(numbers, lessThanTen)

let vegetable = "red pepper"

switch vegetable.lowercaseString {
case "red pepper":
    var vegatableComment = "add some raisins and make ants on a log."
    vegatableComment += vegetable
    vegetable
case "cucmber", "watercress":
    let vegatableComment = "that would make a good tea sandwich"
    
default:
    let vegetableComment = "everything tates good in soup"
}

numbers.map( {
    (number: Int) -> Int in //in以下就是执行体
    let results = 3 * number
    return results
})
numbers


var map1 = numbers.map( {
    (number: Int) -> Int in
    if number % 2 == 1 {
        return 0
    }
    return 1
})

let mappedNumber = numbers.map({ number in 4 * number})

mappedNumber

numbers
let sortedNumbers = sorted(numbers) {$0 < $1}
sortedNumbers


class Shape {
    var numberOfSide = 0
    func simpleDescription() ->String {
        return "A shape with \(numberOfSide) sides."
    }
    
    let numberOfQ = 8
    func simpleNumberOfQ() ->String {
        return "A simple Number of \(numberOfQ) sides"
    }
}

var shape = Shape()
shape.numberOfSide = 8
var shapeDiscription = shape.simpleDescription()
var simpleNumberOfQ = shape.simpleNumberOfQ()


class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    init (name: String) {
        self.name = name
    }
    
    func simpleDescription() ->String {
        return "A shape with \(numberOfSides) sides"
    }
}

var namedShape = NamedShape(name: "啊哈哈")
namedShape.numberOfSides = 8
namedShape.simpleDescription()


class Square: NamedShape {
    var sideLength: Double
    
    init (sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)"
    }
}

let square = Square(sideLength: 6.2, name: "my test square")
square.area()
square.simpleDescription()

class Circle: NamedShape {
    var redius: Double
    init (redius: Double, name: String) {
        self.redius = redius
        super.init(name: name)
        numberOfSides = 8
    }
    func area() -> Double {
        return 3.1415 * redius * redius
    }
    override func simpleDescription() -> String {
        return "A circus with redius is \(redius)"
    }
}

let circleAre = Circle(redius: 10, name: "啦拉拉")
circleAre.area()
circleAre.simpleDescription()

class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init (sideLength: Double, name: String) {
        self.sideLength = sideLength;
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triagle with sides of length\(sideLength)"
    }
}

var triangle = EquilateralTriangle (sideLength: 3.1, name: "a triangle")
triangle.perimeter
triangle.perimeter = 9.8
triangle.sideLength

//函数和闭包
//使用 func 来声明一个函数，使用名字和参数来调用函数。使用 -> 来指定函数返回值。
func greets(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)"
}
greets("Bob", "wed")

func greetEat(name: String, day: String, eat: String) -> String {
    return "Hello \(name), today is \(day) i have eat \(eat)"
}
greetEat("QQ", "2014", "xiami")



class TraiangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            squares.sideLength = newValue.sideLength
        }
    }
    var squares: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    init (size: Double, name: String) {
        squares = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}

var triangleAndSquare = TraiangleAndSquare(size: 10, name: "another test shape")
triangleAndSquare.squares.sideLength
triangleAndSquare.triangle.sideLength
triangleAndSquare.squares = Square(sideLength: 50, name: "large square")
triangleAndSquare.triangle.sideLength

class Count {
    var count: Int = 0
    func incrementBy(amount: Int, numberOfTimes times: Int) {
        count += amount * times
    }
}

var counter = Count()
counter.incrementBy(2, numberOfTimes: 7)

//如果 ? 号之前的值为nil, 则 ? 号后面的都可以被忽略并且整个表达式返回nil, 否则,表达式后面的值才会被执行
let optionalSquare: Square? = Square(sideLength: 2.5, name: "optionSquare")

let sideLength = optionalSquare?.sideLength


//Enumerations and structures
enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() ->String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "Jacl"
        case .Queen:
            return "queen"
        case .King:
            return "King"
        default:
            return String(self.rawValue)
        }
    }
}

let ace = Rank.Five
let aceRawValue = ace.rawValue

if let convertedRank = Rank(rawValue: 11) {
    let threeDescription = convertedRank.simpleDescription()
}

enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() ->String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
}

let hearts = Suit.Hearts
let heartsDescription = hearts.simpleDescription()

                                                                                                                                                                                                                                                                                                                                                                       



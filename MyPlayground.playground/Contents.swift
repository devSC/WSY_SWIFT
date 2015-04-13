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
/*
//struct Card {
//        var rank : Rank
//        var suit: Suit
//        func simpleDescription() -> String {
//        return "The \(rank,simpleDescription()) of \(suit.simpleDescription())"
//    }
//}
//let threeOfSpades = Card(rank: .Three, suit: .Spades)
//let threeOfSpadesDescription = threeOfSpades.simpleDescription()
//
//struct <#name#> {
//    <#properties and methods#>
//}
*/
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min

let orangeAreOriange = true
let turnipsAreDelicious = false

//元组
let http404Error = (404, "Not found")
//http404Error的类型是 (Int, String), 值是(404, "Not found")

let (statusCode, statusMessage) = http404Error
statusCode
statusMessage

let (justTheStatusCode, _) = http404Error
justTheStatusCode

http404Error.0
http404Error.1

let http200Status = (statusCode: 200, description: "OK")
http200Status.statusCode
http200Status.description

let possibleNumber = "123"
let convertedNumber = possibleNumber.toInt()

if convertedNumber != nil {
    convertedNumber
} else {
    convertedNumber
}


/*=======================
可选绑定--用来判断可选类型是否包含值, 如果包含就把值赋给一个临时变量,
*/


if let actualNumber = possibleNumber.toInt() {
    actualNumber
} else {
//    actualNumber
}

var surveyAnswer: String?
surveyAnswer


let possibleString: String? = "An optional string"
//println(possibleString!)  //需要惊叹号来获取值
//possibleNumber!


let assumedString: String! = "An implicity unwrapped optional string."
//println(assumedString)
//assumedString

let age = -3
//assert(age >= 0, "a person's age can't be less than zero")
//
//assert(age > 3)

/*=======================
    运算符
*/
//如果赋值的右边是一个多元组, 他的元素可以马上被分解为多个常量或者变量
let (x, y) = (1, 2)
x
y

let xy = x % y
xy

if x != y {
    println ("x != y")
} else {
    println ("x = y")
}

var emptyString = ""
var anotherEmptyString = String()
emptyString
anotherEmptyString

if emptyString.isEmpty {
    emptyString
} else {
    emptyString
}

for character in "My beautiful girl" {
    character
}

let yenSign: Character = "😄"
let unusualMenagerie = "Koala, Small, penguin, Dromedary"
let unusualCount = count(unusualMenagerie)
unusualCount

var shoppingList = ["eggs", "milk"]
shoppingList.isEmpty
shoppingList += ["baking"]
shoppingList += ["chocolate", "cheese", "butter"]

shoppingList[0]

shoppingList[2...4] = ["banneas"]
shoppingList

shoppingList.insert("哈哈", atIndex: 2)

for (index, value) in enumerate(shoppingList) {
    index
    value
}

var threeDoubles = [Double](count: 3, repeatedValue: 0.0)
threeDoubles

var airports: [String: String] = ["TYO": "TOKYO", "DUB" : "doblin"]

//airports.removeValueForKey("DUB")
//airports

let airportCodes = Array(airports.keys)


var namesOfIntegers = Dictionary<Int, String>()
namesOfIntegers[16] = "sixteen"

namesOfIntegers = [:]


for var index = 0; index < 3; index++ {
    index
}


let finalSquare = 25
var board = [Int](count: finalSquare+1, repeatedValue: 0)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
var squares = 0
var diceRoll = 0
while squares < finalSquare {
    //掷色子
    if ++diceRoll == 7 { diceRoll = 1}
    //移动点数
    squares += diceRoll
    if squares < board.count {
        //如果玩家在棋盘上, 顺着梯子爬上去或者顺着蛇滑下去
        squares += board[squares]
    }
}


let someCharacter: Character = "e"
switch someCharacter {
case "a", "e", "i", "o", "u":
    let value = "\(someCharacter) is a vowel"
    
//case  ​"b"​, ​"c"​, "d"​, ​"f"​, ​"g"​, ​"h"​, ​"j"​, ​"k"​, ​"l"​, ​"m"​,"n"​, ​"p"​, ​"q"​, ​"r"​, ​"s"​, ​"t"​, ​"v"​, ​"w"​, ​"x"​, ​"y"​, ​"z"​:
//    let value = "\(someCharacter) is a consonant"
default:
    let value = "\(someCharacter) is not a vowel or a consnant"
}

let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let(x, y) where x == y:
    x
    y
case let(x, y) where x == -y:
    x
    y
case let (x, y):
    x
    y
fallthrough //挨着default
default:
    yetAnotherPoint
}

squares = 0
diceRoll = 0
gameLoop: while squares != finalSquare {
    if ++diceRoll == 7 { diceRoll  = 1 }
    switch squares + diceRoll {
    case finalSquare :
        "完成了"
        break gameLoop
    case let newSquare where newSquare > finalSquare :
        continue gameLoop
    default:
        squares += diceRoll
        squares += board[squares]
    }
}

func sayHello(personName: String) ->String {
    let greeting = "hello, " + personName + "!"
    return greeting
}
sayHello("南哥")

func someFunction(externalParameterName localParameterName: Int) {
    localParameterName
}

someFunction(externalParameterName: 90)

func containsCharacter(#string: String, #characterToFind: Character) ->Bool {
    for charchter in string {
        if charchter == characterToFind {
            return true
        }
    }
    return false
}

let containsAVee = containsCharacter(string: "aadrvark", characterToFind: "v")

func join(s1: String, #s2: String, joiner: String = "  ") ->String {
    return s1 + joiner + s2
}

func arithmeticMean(numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total
}

arithmeticMean(1, 2, 3, 4,5)

func alignRight(var string: String, counts: Int, pad: Character) -> String {
    let amountToPad = counts - count(string)
    if amountToPad < 1 {
        return string
    }
    let padString = String(pad)
    
    for _ in 1...amountToPad {
        string = padString + string
    }
    return string
}

let originalString = "hello"
let paddedString = alignRight(originalString, 10, "-")


                                                                                                                                                                                                                                                                   
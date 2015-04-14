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

func addTwoInts(a: Int, b: Int) ->Int {
    a + b
    return a + b
}

func stepForward(input: Int) -> Int {
    input + 1
    return input + 1
}

func stepBackward(input: Int) -> Int {
    input - 1
    return input - 1
}

func chooseStepFunction(backwards: Bool) -> (Int) ->Int {
    return backwards ? stepBackward : stepForward
}

var currentValue = 3
let moveNearerToZero = chooseStepFunction(3 > 0) //判断用哪个函数


while currentValue != 0 {
    currentValue = moveNearerToZero (currentValue) //用哪个函数
}


let names = ["chris", "alex", "ewa", "barry", "daniella"]
func backwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}


var reversed = sorted(names, backwards)

reversed = sorted(names,  >)

reversed = sorted(names) { $0 > $1}


func makeIncrementor(forIncremnt amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementor() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementor
}

let incrementByTen  = makeIncrementor(forIncremnt: 10)
incrementByTen()
incrementByTen()
incrementByTen()

enum Barcode {
    case UPCA(Int, Int, Int)
    case QRCODE(String)
}

var productBarcode = Barcode.UPCA(8, 827282_2728, 3)

productBarcode = .QRCODE("avciciusofs") //枚举情况下 只能存取一个值

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRage = 0.0
    var name: String?
}

//结构体和枚举是值类型

let someResolution = Resolution() //通过添加()的方式初始化的类或者结构体 其属性均被会初始化为默认值
let someVideoMode = VideoMode()
someVideoMode.resolution.width = 20
someVideoMode.resolution.height = 800
someVideoMode.name = "天下无贼"

let vga = Resolution(width: 640, height: 960)

let alsoSomeVideoMode = someVideoMode
alsoSomeVideoMode.resolution.width = 900
someVideoMode

if alsoSomeVideoMode === someVideoMode {
    "两个相等"
}

class DataImporter {
    var fileName = "data.txt"
}
class DataManager {
    lazy var improter = DataImporter()
    var data = [String]() //申明一个字符串数组
    
}

let manager = DataManager()
manager.data.append("someData")
manager.data.append("some more data")

manager.improter.fileName //lazy 延迟加载


struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point (x: centerX, y: centerY)
        }
        set (newCenter){
            origin.x = newCenter.x - size.width / 2
            origin.y = newCenter.y - size.height / 2
            
        }
    }
}

var squareRect = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = squareRect.center //调用get方法
squareRect.center = Point(x: 15.0, y: 15.0) //调用set方法

//只读计算属性
class StepCounter {
    var totalSteps: Int = 0 {
        willSet {
            "will set"
            newValue
        }
        didSet {
            if totalSteps > oldValue {
                    "didSet"
                oldValue
                totalSteps
                
            }
        }
    }
}


let stepCounter = StepCounter()
stepCounter.totalSteps = 100



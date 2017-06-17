//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"
print("hello, world")
let firstC: Float = 40
let label = "The width is "
let width = 94
let widthLabel = label + String(width)
print(widthLabel)
let apples = 3
let oragnes = 5
let apppleSummary = "I have \(apples) apples"
let fruitSummary = " I have \(apples+oragnes) piece of fruit"

let student = 100
let score = 10.233
let sName = "jack"
let studentScore = "they get \(score) in the final exam"
let studentName = "his name is \(sName)"

var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"
var occupations = [
   "Malcolm":"Captain",
   "Kaylee":"Mechanic"
]

occupations["Jayne"] = "public relations"

let emptyArray = [String]()
let emptyDictionary = [String:Float]()
shoppingList = []
occupations = [:]

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for i in individualScores {
    if (i > 50) {
        teamScore += 3
    }
    else {
        teamScore += 1
    }
}
print(teamScore)

var optionalString: String? = "hello"
print (optionalString == nil)
var optionalName: String? = "John Appleseed"
var greeting = "12345"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
print(greeting)


let nickName: String? = nil
let fullName: String = "John Depe"
let informalGreeting = "Hi \(nickName ?? fullName)"
//如果nickName是非nil的值，则就用其值，否则就用fullName
//let nickName: String? = "dwjk"
//let fullName: String = "John Depe"
//let informalGreeting = "Hi \(nickName ?? fullName)"

let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}


let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)



var n = 2
while n < 100 {
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)



var total = 0
for i in 1..<101 {
    total += i
}
print(total)


// 函数标准写法
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet(person: "Bob", day: "Tuesday")
//函数的另外一种写法on是自定义参数，_ 是空参数标签
func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet("John", on: "Wednesday")
//函数的传入参数可以是一个数组，可以返回多个值
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)
//内嵌函数 nested function
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()
//在Swift语言中，函数是first class的，换句话说，能够做为参数传入，也可以传出
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)





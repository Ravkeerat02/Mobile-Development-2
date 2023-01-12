import UIKit

var name = "Ravkeerat" , num = 12 , exp = num * 12 , msg:String?
//? - optional string
print("Welcome to Xcode,",name,"!")
print("📸")

msg = "num is equal to  " + String(num)
let pi = 3 + 0.1415
let bin = 0b010101
let oct = 0o21
let dec = 1234
//let b = 1.25e2
let x = 1_00000_0000

typealias SamplingRate = UInt16
var y:SamplingRate = 12

//tuple - can be broken down easily

let t:(Int , Int) = (1,2)
var a:Int = 10, b:Int = 30
(a,b) = (b,a)

msg = """
\n\n{2665}\"\'
Swift is a new programming language for IOS
"""
var carr:[Character] = ["a","b","c"]
msg?.append(String(carr))

if msg != nil {
    print(msg!)
}else{
    print("msg is empty")
}

var grade: Int = 98
//Interval macthing - grade is between x and y

switch grade{
case 80..<100:
    print("Amazing")
case 70..<80:
    print("Very good")
case 60..<70:
    print("Could be better")
case 50..<60:
    print("NOOOOOOOOO")
default:
    print("No grade")
}

let somePoint = (1,1)

//can be used with where keyword
switch somePoint{
case (0,0):
    print("in center")
case (_,0):
    print("on Xaxis")
case(0, _):
    print("on Yaxis")
case(-2...2,-3...3):
    print("in field")
default:
    print("off grid")
}

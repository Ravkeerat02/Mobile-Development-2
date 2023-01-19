import UIKit

func greet(firstName n:String) ->Void{
    print("Hello \(n)!")
    return
}

//setting default values for the param - label still needs to be there

func area(w:Int , h:Int)-> Int{
    let res = w*h
    return res
}

func multiplyMany(first:Int? , numbers:Int...)->Int{
    
    var res = first!
    
    for n in numbers{
        res *= n
    }
    
    return res
}

func swap(a: inout Int , b:inout Int){
    //inout needs to be there for the swap fnc
    (a,b) = (b,a)
}

var x = 5 , y = 10
swap(a: &x, b: &y)


greet(firstName: "Ravkeerat Singh")
print("***********")
print(area(w: 10, h:20))
print(multiplyMany(first: 10 , numbers: 2,4,6,8))


func calculator(a:Int , b:Int , op:String)-> Int{
    var res = 0
    
    func plus(_ a:Int , _ b:Int )-> Int{return a+b}
    func minus(_ a:Int , _ b:Int )-> Int{return a-b}
    func multiply(_ a:Int , _ b:Int )-> Int{return a*b}
    func divide(_ a:Int , _ b:Int )-> Int{return a/b}
    
    switch op{
    
    case "+":
      res = plus(a,b)
        
    case "-":
        res = minus(a,b)
        
    case "*":
        res = multiply(a,b)
        
    case "/":
        res = divide(a,b)
        
        
    default:
        res = 0
    }
    
    return res
}
print("*********")
print(calculator(a: 5, b: 10, op: "*"))

func calculator2(op:String) ->(Int , Int)->Int{
    
    func plus(_ a:Int , _ b:Int )-> Int{return a+b}
    func minus(_ a:Int , _ b:Int )-> Int{return a-b}
    func times(_ a:Int , _ b:Int )-> Int{return a*b}
    func divide(_ a:Int , _ b:Int )-> Int{return a/b}
    
    switch op{
    
    case "+":
      return plus
        
    case "-":
        return minus
        
    case "*":
        return times
        
    case "/":
        return divide
        
        
    default:
        return {
            //$0 - 1st parameter , $1 - 2nd param - shortest version of closure
            //can be certain ways to use closure
            //need to define for the operator - if its different data type
            $0/$1
        }
    }
    
}
print("************")
var f = calculator2(op: "/")
print(f(10,5))

let name = ["USA","CA","SA"]

func backwards(a:String , b:String)->Bool{
    return a>b
}
print("**********")
var reverse = name.sorted(by: <)
print(reverse)




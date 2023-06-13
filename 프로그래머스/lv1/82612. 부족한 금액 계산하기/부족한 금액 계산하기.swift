import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var answer:Int = 0
    var result:Int = 0
    
    for i in 1..<count + 1{
      result += price * i
    }
    
    if result > money {
        answer = result - money
    }else{
        answer = 0
    }
    
    return Int64(answer)
}
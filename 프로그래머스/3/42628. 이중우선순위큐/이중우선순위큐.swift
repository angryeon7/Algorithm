import Foundation

func solution(_ operations:[String]) -> [Int] {
    
    var num:[Int] = Array<Int>()
    
    for i in operations{
        if (i.contains("I")){
            var Index = i.index(i.startIndex, offsetBy: 2)
			var input = Int(i[Index...])! 
            num.append(input)
        }else if (i.contains("D -1")){
            if num.count != 0{
                var min = num.min()!
                // print(min)
                // print(num.firstIndex(of: min))
                num.remove(at: num.firstIndex(of: min)!)
            }
        }else {
            if num.count != 0{
                var max = num.max()!
                num.remove(at: num.firstIndex(of: max)!)
            }
        }
    }
    
    if num.count == 0{
        return [0, 0]
    } else {
        return [num.max()!, num.min()!]
    }
    return [0]
}
import Foundation

func solution(_ s:String) -> Int {
    
    var count = 0
    
    for i in 0..<s.count {
        var char = s.prefix(i)
        var startIndex = s.index(s.startIndex, offsetBy: i)
        var parenthesis = s[startIndex...] + char
        var arr = String(parenthesis).map{String($0)}
        var checkArray = [String]()
        while(arr.count != 0) {
            var k = arr[0]
            if (k == "{" || k == "(" || k == "[" ){
                checkArray.append(k)
                arr.removeFirst()
            } else if (k == "}"){
                if checkArray.popLast() != "{"{
                    break
                } else { arr.removeFirst()}
            } else if (k == "]"){
                if checkArray.popLast() != "["{
                    break
                }else { arr.removeFirst()}
            }else {
                if checkArray.popLast() != "("{
                    break
                }else { arr.removeFirst()}
            }
        }
        
        if(arr.count == 0 && checkArray.count == 0 ){
            count += 1
        }
    }
   
    
    return count
}
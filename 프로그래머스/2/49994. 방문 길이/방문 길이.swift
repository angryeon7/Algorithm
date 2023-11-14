import Foundation

var count = 0
var num = 0
var pointArr = [[0,0]]
var arr = [String]()

func check(){ 
    let before = pointArr[num].map(String.init).joined()
    num += 1
    let after = pointArr[num].map(String.init).joined()
    var str = before + after
    var rts = after + before
    if arr.firstIndex(of: str) == nil && arr.firstIndex(of: rts) == nil{
        count += 1
        arr.append(str)
        arr.append(rts)
    }
}

func solution(_ dirs:String) -> Int {
    var point : [Int] = [0,0]
    var dir = dirs.map {$0}
    for i in 0..<dir.count{
        if dir[i] == "U" && point[0] != 5{
            point[0] += 1
            pointArr.append(point)
            check()     
        } else if dir[i] == "D" && point[0] != -5{
            point[0] -= 1
            pointArr.append(point)
            check()
            
        } else if dir[i] == "R" && point[1] != 5{
            point[1] += 1
            pointArr.append(point)
            check()
        } else if dir[i] == "L" && point[1] != -5{
            point[1] -= 1
            pointArr.append(point)
            check()
        }
    }
    
    return count
}
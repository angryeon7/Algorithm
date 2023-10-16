import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    var result = String(n,radix: k)
    var count = 0
    var arr = result.split(separator: "0")
    for i in arr {
        if Int(i)! == 1 || Int(i)! % 2 == 0 {
            if Int(i)! == 2 {
                count += 1
            }
            continue
        }
        var max = Int(ceil(sqrt(Double(i)!)))
        var s = 2
        while(s <= max){
            if Int(i)! % s == 0{
                break
            }else {
                s += 1
            }
        }
        if (Int(i)! < 4 || s > max){
            count += 1
        }
    }

    return count
}
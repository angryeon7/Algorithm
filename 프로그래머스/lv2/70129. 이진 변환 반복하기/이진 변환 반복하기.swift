import Foundation

func solution(_ s:String) -> [Int] {
    
    var count = 0
    var time = 0

    var n = s
    while(n != "1"){
        // var replaceCount = n.filter { $0 == "0" }.count
        var before = n.count
        n = n.replacingOccurrences(of: "0", with: "")
        var after = before - n.count
        count += after
        n = String(n.count, radix: 2)
        time += 1
    }

    return [time, count]
}
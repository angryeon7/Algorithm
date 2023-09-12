import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    
    var count = 1
    var w = ["\(words[0])"]
    for i in 1..<words.count{
       if w.contains("\(words[i])") || words[i - 1].suffix(1) != words[i].prefix(1){
           count += 1
           break
       }else {
           count += 1
           w.append(words[i])
       }
    }
    
    var person = count % n
    if count == w.count {
        return [0, 0]
    } else {
        if person % n == 0{
            return [n, count / n]
        }
    }
    
    return [person , count / n + 1 ]
}
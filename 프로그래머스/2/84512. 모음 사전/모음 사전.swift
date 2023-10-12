import Foundation

func solution(_ word:String) -> Int {
    var answer : Int = 0
    var wordArr : [String] = String(word).map {String($0)}
    var char : [String] = ["A", "E", "I", "O", "U"]
    var li : [Int] = [781, 156, 31, 6, 1]
    
    for i in 0..<word.count{
        answer += (char.firstIndex(of: wordArr[i])!) * li[i]
    }
        
    answer += word.count
    return answer
}



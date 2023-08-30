import Foundation

func solution(_ A:String, _ B:String) -> Int {
    
    var arr = Array(A)
    
    for i in 0..<arr.count {
        if String(arr) == B {
            return i
        }
        arr.insert(arr.last!, at: 0)
        arr.removeLast()
    }
    return -1
}
import Foundation

func solution(_ citations:[Int]) -> Int {
    
    var result = 0
    var max = Int(citations.max()!)
    for i in 0...max{
        if (citations.filter {$0 >= i}).count >= i && (citations.filter {$0 < i}).count <= i{
        if result < i {
            result = i
            }
        }
    }
    
    return result
}
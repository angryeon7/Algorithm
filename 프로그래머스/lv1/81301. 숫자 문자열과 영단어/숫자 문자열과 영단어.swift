import Foundation


func solution(_ s:String) -> Int {
    
    let number = ["zero","one","two","three","four","five","six","seven","eight","nine"]
    var result = s
    
    for i in 0..<number.count {
        result = result.replacingOccurrences(of: number[i], with: "\(i)")
        print(result)
    }
    
    return Int(result)!
    
}

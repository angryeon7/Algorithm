import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    
    var check = Array(repeating: false, count: discount.count - 9 )
    for day in 0..<discount.count - 9 {
        var copyArray = discount[day ..< day + 10]
        for w in 0..<want.count{
            if copyArray.filter { $0 == want[w] }.count == number[w]{
                check[day] = true
            
            } else {
                check[day] = false
                break
            } 
        }
    }

    return check.filter{ $0 == true }.count
} 
import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    var orderArray = String(skill).map {$0}
    var resultnum : Int = 0
    var skill_array : [String] = skill_trees
    
    for skills in skill_array {
        var result = String(skills).map {$0}
        var n : Int = 0
        var count : Int = 0
        for checkStr in result {
            if checkStr != orderArray[n] && orderArray.contains(checkStr) == true {
                break
            }
            if checkStr == orderArray[n] && n != orderArray.count - 1 {
                n += 1
            }
            count += 1
        }
        if count == result.count {
            resultnum += 1
        }
    }
    return resultnum
}
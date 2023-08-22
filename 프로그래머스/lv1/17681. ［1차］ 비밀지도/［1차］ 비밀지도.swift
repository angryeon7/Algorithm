func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    
    var map1 = arr1.map{String($0, radix: 2)}
    var map2 = arr2.map{String($0, radix: 2)}

    
      for i in 0..<n{
        while map1[i].count < n{
            map1[i] = "0" + map1[i]
        }
        while map2[i].count < n{
            map2[i] = "0" + map2[i]
        }
         
         var str = ""
         for col in 0..<n{
            if Array(map1[i])[col] == "1" || Array(map2[i])[col] == "1"{
                str += "#"
            }else{
                str += " "
            }
        }
        
        answer.append(str)
        str = ""
    }
    
    
    return answer
}
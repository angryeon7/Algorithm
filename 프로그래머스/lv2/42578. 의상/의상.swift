import Foundation

func solution(_ clothes:[[String]]) -> Int {
    
    var category : Set<String> = []
    var result = 1
    
    for i in 0..<clothes.count{
         category.insert(clothes[i][1])
    }
  
    
    for j in category{
        result *= (clothes.filter { $0[1] == j }.count+1)
    }  
   
    return result - 1
}
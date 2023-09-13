import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    
   
    for i in 1...yellow{
        print(i)
        if yellow % i == 0 && 2*(yellow / i) + 2*i + 4 == brown{
            return [ yellow / i + 2, i + 2 ]
        } else{
            continue
        }
    }
    return []
}
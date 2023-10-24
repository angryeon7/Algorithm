import Foundation

//시간초과
// func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
//     var arr = [Int]()
//     for i in 1..<n+1{
//         var num = i
//         var count = 0
//         while(count != n){
//             if count < num{
//                 arr.append(num)
//                 count += 1
//             }else {
//                 num += 1
//                 arr.append(num)
//                 count += 1
//             }
//         }
//     }
//     var result = [Int]()
//     for i in left..<right + 1{
//         result.append(arr[Int(i)])
//     }
//     return result
// }

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {

    var arr = [Int]()
    for num in Int(left)..<Int(right) + 1 {
        var value = num / n + 1
        var remains = num % n + 1
        
        if value > remains {
            arr.append(value)
        } else {
             arr.append(remains)
        }
    }
    
    return arr
}
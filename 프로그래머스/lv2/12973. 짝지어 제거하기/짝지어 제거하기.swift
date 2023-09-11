import Foundation

func solution(_ s:String) -> Int{
        
    if s.count % 2 != 0{ 
        return 0
    }
    
    var str = Array(s)
    var result : [Character] = []
    
    for i in str{
        if result.count != 0 && result.last == i {
            result.removeLast()
        }else{
            result.append(i)
        }
    }
    return result.isEmpty ? 1 : 0
}


// 효율성 실패
// func solution(_ s:String) -> Int{

//     var str = Array(s).map {String($0)}
//     var i = 1

//     while(i != str.count){
//         if str[i] != str[i - 1]{
//             i += 1
//         } else {
//             str.remove(at: i)
//             str.remove(at: i - 1)
//             if i != 1{
//                 i -= 1
//             } else {
//                 i = 1
//             }
//         }
//         if str.count == 0 {
//             break
//         }
//     }
//     return (str == [] ? 1 : 0)
// }

//시간 초과
// func solution(_ s:String) -> Int{
//     var answer:Int = 0
//     var str = s
//     var i = 1
//     while(i < str.count){
//         var a = str[String.Index(encodedOffset: i)]
//         var b = str[String.Index(encodedOffset: i - 1)]
//         if (a != b){
//             i += 1       
//         } else {
//             str.remove(at: str.index(str.startIndex, offsetBy: i))
//             str.remove(at: str.index(str.startIndex, offsetBy: i - 1))
//             if i == 1{
//                 i = 1
//             } else {
//                 i -= 1
//             }
//         }
//     }
    
//     if str.count == 0 {
//         answer = 1
//     }

//     return answer
// }
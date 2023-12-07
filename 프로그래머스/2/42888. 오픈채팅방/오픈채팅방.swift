import Foundation

// var result = [[String]]()

// func checkName(info:Array<String>) {
//     result.enumerated().forEach {
//         if $0.1[0] == info[1] {
//             var beforeMessage = $0.1[1].split(separator: " ").map {String($0)}
//             var idx = $0.0
//             var id = $0.1[0]
//             result.remove(at:idx)
//             result.insert([id,"\(info[2])님이 \(beforeMessage[1])"], at:idx)
//         }
//     }
// }

// func solution(_ record:[String]) -> [String] {
//     for user in record {
//         let info = user.split(separator: " ").map {String($0)}
// //        print(type(of: info))
//         switch info[0] {
//         case "Enter":
//             checkName(info: info)
//             result.append([info[1],"\(info[2])님이 들어왔습니다."])
            
//         case "Leave":
//              if let i = result.firstIndex(where: { $0[0] == info[1] }) {
//                     var beforeMessage = result[i][1].split(separator: " ").map {String($0)}
//                     result.append([info[1],"\(beforeMessage[0]) 나갔습니다."])
//             }
            
//         case "Change":
//             checkName(info: info)
        
//         default:
//             break
//         }
//     }
//     return result.map {$0[1]}
// }

func solution(_ record:[String]) -> [String] {
    var nameDic : [String : String] = [:]
    var result : [String] = []
    var message : [(action: String, id: String)] = []
    
    for info in record {
        let recArr = info.components(separatedBy: " ")
            message.append((recArr[0], recArr[1]))
           switch recArr[0] {
           case "Enter":
               nameDic[recArr[1]] = recArr[2]
           case "Change":
               nameDic[recArr[1]] = recArr[2]
           default:
               break;
        }
    }
    
    for (action, id) in message {
        switch action {
        case "Enter":
            result.append("\(nameDic[id]!)님이 들어왔습니다.")
        case "Leave":
            result.append("\(nameDic[id]!)님이 나갔습니다.")
        default:
            break
        }
    }
    
    return result
}



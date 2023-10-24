func solution(_ msg:String) -> [Int] {
    
    var count = 0
    var dict: [String: Int] = ["A": 1, "B": 2, "C": 3, "D": 4, "E": 5, "F": 6,
                               "G": 7, "H": 8, "I": 9, "J": 10, "K": 11, 
                               "L": 12, "M": 13, "N": 14, "O": 15, "P": 16,
                               "Q": 17, "R": 18, "S": 19, "T": 20, "U": 21,
                               "V": 22, "W": 23, "X": 24, "Y": 25, "Z": 26]
    var msg: [String] = Array(msg).map { String($0) }
    
    var str: String = ""
    var result: [Int] = []
    while count < msg.count {
        let ch = msg[count] //다음 글자
        var tmpString = str + ch //현재 입력
        
        guard let _ = dict[tmpString] else { //존재하지 않으면 사전 추가
            dict[tmpString] = dict.count+1            
            result.append(dict[str]!) //출력
            
            str = ""
            continue
        }
     
        //존재하면 계속 탐색
        str += ch   
        count += 1
    }
    
    result.append(dict[str]!) //출력
        
    return result
} 


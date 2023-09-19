import Foundation

func solution(_ s:String) -> [Int] {
    
    var str = s
    var ans:[Int] = []
    
    // 양끝 괄호 삭제
    str = String(str.dropLast(1))
    str = String(str.dropFirst(1))

    var sort = Array(repeating: "a", count: str.filter { $0 == "{" }.count)
    
    //배열만들기
    var arr = str.components(separatedBy: ["}","{"])
    for i in 0..<arr.count {
        //"," 나 "" 인 값은 넘어가기
        if i % 2 == 0{
            continue
        } else{
            sort[arr[i].filter { $0 == "," }.count] = arr[i]
            
        }
    }
    
    ans.append(Int(sort[0])!)
    for i in 1..<sort.count{
        var a = sort[i].split(separator: ",").map {Int($0)!}
        a.removeAll(where: { ans.contains($0)})
        ans.append(a[0])
    }
    
    return ans
}
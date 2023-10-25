func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
    var num = 0
    var cnt = 1
    var result = [String]()
    var p1 = p
    if m == p1{
        p1 = 0
    } else {
        p1 = p
    }
    while(result.count < t) {
        var ans = Array(String(num, radix: n))
        while (ans.count > 0){
            if cnt % m == p1{
                result.append(String(ans[0]))
            }
            cnt += 1
            ans.removeFirst() 
        }
        num += 1
    }
   
    return result.prefix(t).joined(separator: "").uppercased()

}
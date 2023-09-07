import Foundation

func solution(_ s:String) -> String {
    var arr = s.components(separatedBy: " ")
    var result : [String] = []
    for i in 0..<arr.count{
        if arr[i] == ""{
            result.append("")
        } else {
        var st = String(arr[i]).lowercased()
        var first = String(st.prefix(1))
        first = first.uppercased()
        st.removeFirst()
        st = first + st
        result.append(st)
        }

    }
    return result.joined(separator:" ")
}
import Foundation
// func solution(_ k:Int, _ tangerine:[Int]) -> Int {   
    // 시간초과
    // var count = [Int]()
    // var arr = Array(Set(tangerine))
    // for i in arr{
    //     count.append(tangerine.filter{$0 == i}.count)
    // }
    // var result = 0
    // var sum = k
    // count = count.sorted(by : >)
    // while sum > 0{
    //     sum -= count[result]
    //     result += 1
    // }
    // return result
// }

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    // 귤을 크기-갯수의 dict로 만들기
    var dict = [Int:Int]()
    for t in tangerine {
        dict[t, default: 0] += 1
    }
    
    // 귤의 크기를 갯수가 많은 순서대로 정렬
    let keys = dict.keys.sorted { dict[$0]! > dict[$1]! }
    
    // 귤의 크기의 "종류 수"
    var cnt = 0
    // 상자에 들어갈 귤의 총합
    var sum = 0
    
    // 가장 갯수가 많은 큘의 크기부터 상자에 넣고
    for key in keys {
        sum += dict[key]!
        cnt += 1
        // 상자에 들아간 귤이 k 이상일 때 break
        if sum >= k { break }
    }
    
    return cnt
}

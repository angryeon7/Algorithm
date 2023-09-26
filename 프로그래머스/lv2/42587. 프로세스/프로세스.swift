import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    
    var arr = priorities
    var pr : [Int] = []
    var num = 0
    var index = 0
    
    while(pr.count != arr.count){
        var max = 0
        for i in 0..<arr.count {
            if max < arr[num]{
                max = arr[num]
                index = num
            }
            num += 1
            if (num == arr.count){
                num = 0
            }
        }
        num = index
        arr[index] = 0
        pr.append(index)
    }
    print(pr)

    return pr.firstIndex(of: location)! + 1
}
import Foundation

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    
    let format = DateFormatter()
    var charge = [String : Int]()
    var dict = [String : String]()
    format.dateFormat = "HH:mm"
    for i in 0..<records.count{
        var arr : [String] = String(records[i]).split(separator: " ").map {String($0)} 
        if arr[2] == "IN"{
            dict[arr[1]] = arr[0]
        } else {
            var startTime = format.date(from: dict[arr[1]]!)!
            var endTime = format.date(from: arr[0])!
            var useTime = Int(endTime.timeIntervalSince(startTime)) / 60

            if charge[arr[1]] != nil {
                var time : Int = charge[arr[1]]!
                charge.updateValue(useTime + time, forKey: arr[1])
            }else {
                charge[arr[1]] = useTime
            }
            dict[arr[1]] = nil
        }
        
    }
    
    if dict.count != 0{
        for (key,value) in dict{
            var startTime = format.date(from: value)!
            var endTime = format.date(from: "23:59")!
            var useTime = Int(endTime.timeIntervalSince(startTime)) / 60
            
            if charge[key] != nil {
                var time : Int = charge[key]!
                charge.updateValue(useTime + time, forKey: key)
            }else {
                charge[key] = useTime
            }
        }
    }
    var sort = charge.sorted{$0.0 < $1.0}
    var values = sort.map {$0.1}
    var result = [Int]()
    // print(values)
    for num in values {
        var n = (num - fees[0]) > 0 ? Double(num - fees[0]) / Double(fees[2]) : 0.0
        result.append(fees[1] + (Int(ceil(n)) * fees[3]))
    }
    
    return result
}
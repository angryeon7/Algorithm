func solution(_ files: [String]) -> [String] {
    var fileList: [(head: String, number: Int, index: Int)] = []

    for (index, file) in files.enumerated() {
        var fileChars = Array(file.lowercased())
        var head = ""
        var number = ""

        while let firstChar = fileChars.first, !firstChar.isNumber {
            head.append(fileChars.removeFirst())
        }

        while let firstChar = fileChars.first, firstChar.isNumber {
            number.append(fileChars.removeFirst())
        }

        fileList.append((head, Int(number) ?? 0, index))
    }

    let sortedFiles = sortFiles(fileList, originalFiles: files)
    return sortedFiles
}

func sortFiles(_ fileList: [(head: String, number: Int, index: Int)], originalFiles: [String]) -> [String] {
    return fileList.sorted(by: {
        if $0.head == $1.head {
            if $0.number == $1.number {
                return $0.index < $1.index
            }
            return $0.number < $1.number
        }
        return $0.head < $1.head
    }).map({ originalFiles[$0.index] })
}
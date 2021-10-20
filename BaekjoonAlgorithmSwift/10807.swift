import Foundation

let n = Int(readLine()!)!
let list = readLine()!.split(separator: " ").map{Int(String($0))!}
let v = Int(readLine()!)!
var answer = 0

for i in list {
   if i == v {
        answer += 1
    }
    
}

print(answer)


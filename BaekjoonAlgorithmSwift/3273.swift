import Foundation

//시간 초과발생
let n = Int(readLine()!)!
let list = readLine()!.split(separator:" ").map{Int(String($0))!}
let x = Int(readLine()!)!
var answer: Int = 0


for i in list {
    for j in list {
        if i + j == x {
            answer += 1
        } else { continue }
    }
}

print(answer / 2)


//정답.
// 리스트를 만들어주고 오름차순으로 정렬한다. 이후 첫인덱스와 마지막 인덱스를 비교하는 식으로 값 찾기.
let N = Int(readLine()!)!
let list = readLine()!.split(separator: " " ).map{Int(String($0))!}.sorted()
let X = Int(readLine()!)!

var l = 0, r = N-1
var count = 0

while l<r {
    let sum = list[l]+list[r]
    if sum == X {
        r -= 1; l += 1;
        count += 1
    } else if sum > X {
        r -= 1
    } else {
        l += 1
    }
}
print(count)




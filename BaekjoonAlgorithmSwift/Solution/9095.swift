import Foundation

/*
 2 - 2
 1 1              1   2  3  16
 2              2   3  5  8  24
             1  2  4  7  12 20 44
            1 2 4 7  13  24  44
 3 - 4
                2  4  5  8 24          1    7    20
 1 1 1         2  4 7 12 20 44           3    12    44
 1 2
 2 1
 3
 
 4 - 7
 1 1 1 1
 1 1 2
 1 2 1
 1 3
 2 1 1
 2 2
 3 1
 
 5 - 13
 1 1 1 1 1
 1 1 1 2
 1 1 2 1
 1 2 1 1
 1 2 2
 1 1 3
 1 3 1
 2 1 1 1
 2 1 2
 2 2 1
 2 3
 3 1 1
 3 2
 
 6 - 24
 1 1 1 1 1 1
 1 1 1 1 2
 1 1 1 2 1
 1 1 2 1 1
 1 1 2 2
 1 2 1 1 1
 1 2 1 2
 1 2 2 1
 1 2 3
 1 1 1 3
 1 1 3 1
 1 3 1 1
 1 3 2
 2 1 1 1 1
 2 1 1 2
 2 1 2 1
 2 2 1 1
 2 2 2
 2 1 3
 2 3 1
 3 1 1 1
 3 1 2
 3 2 1
 3 3

 6개 - 1  5개 - 5 4개 -
 
*/

import Foundation


var testCase = Int(readLine()!)!

var dp = Array(repeating: 0, count: 12)

dp[1] = 1
dp[2] = 2
dp[3] = 4

var inputArray: [Int] = []

for _ in 0...testCase - 1 {
    let input = Int(readLine()!)!
    inputArray.append(input)
}
    
for k in 4...inputArray.max()! {
    dp[k] = dp[k - 3] + dp[k - 2] + dp[k - 1]
}


for m in inputArray {
    print(dp[m])
}
    



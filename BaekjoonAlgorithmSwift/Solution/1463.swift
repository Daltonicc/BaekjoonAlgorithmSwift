//
//  1463.swift
//  BaekjoonAlgorithmSwift
//
//  Created by 박근보 on 2021/10/21.
//

import Foundation

var N = Int(readLine()!)!

var count = 0

var arr : [Int] = [Int](repeating: 0, count: N+1)

if (N == 1) {
    print(0)
} else if (N == 2) {
    print(1)
} else if (N == 3) {
    print(1)
} else {
    arr[1] = 0
    arr[2] = 1
    arr[3] = 1

    //점화식 구하기
    for i in 4...N {
        arr[i] = arr[i-1]+1
        if (i%3 == 0) {
            arr[i] = min(arr[i], arr[i/3]+1)
        }
        if (i%2 == 0) {
            arr[i] = min(arr[i], arr[i/2]+1)
        }

    }
    print(arr[N])
}

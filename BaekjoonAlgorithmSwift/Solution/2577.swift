//
//  2577.swift
//  BaekjoonAlgorithmSwift
//
//  Created by 박근보 on 2021/10/16.
//

import Foundation

let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!
var list: [Int] = Array(repeating: 0, count: 10)

var d = a * b * c

while d > 0 {
    
    var e = d % 10
    list[e] += 1
    d /= 10
    
}

for i in 0..<list.count {
    print(list[i])
}

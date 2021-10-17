//
//  10808.swift
//  BaekjoonAlgorithmSwift
//
//  Created by 박근보 on 2021/10/17.
//

import Foundation

let a = readLine()!

let alphabetList: [String] = ["a", "b", "c", "d"]
var alphabetCount: [Int] = Array(repeating: 0, count: 26)

for i in a {
    
    alphabetCount[Int(i.asciiValue!) - 97] += 1
    
}

for s in alphabetCount {
    
    print(s, terminator: " ")
}

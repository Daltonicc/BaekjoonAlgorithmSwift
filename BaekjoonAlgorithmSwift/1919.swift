//
//  1919.swift
//  BaekjoonAlgorithmSwift
//
//  Created by 박근보 on 2021/10/20.
//

import Foundation

var a: String = readLine()!
var b: String = readLine()!
var count = 0

for i in a {
    if b.contains(i) {
        b.remove(at: b.firstIndex(of: i)!)
    } else {
        count += 1
    }
}

print(b.count + count)




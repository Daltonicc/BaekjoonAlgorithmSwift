//
//  ProgrammersSkillCheck1.swift
//  BaekjoonAlgorithmSwift
//
//  Created by 박근보 on 2021/10/26.
//

let n = readLine()!.split(separator: " ").map{ Int($0)! }
let (a, b) = (n[0], n[1])

var list = Array(repeating: [], count: b)
var answerList: [Any] = []

for i in 0..<b {
    for _ in 0..<a {
        list[i].append("*")
    }
    
}

for k in 0..<b {
    for l in 0..<a {
        print(list[k][l], terminator: "")
        
    }
    print("")
    
}

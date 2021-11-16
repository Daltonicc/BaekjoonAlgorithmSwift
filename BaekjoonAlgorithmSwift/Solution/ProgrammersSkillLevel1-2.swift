//
//  ProgrammersSkillCheck2.swift
//  BaekjoonAlgorithmSwift
//
//  Created by 박근보 on 2021/10/26.
//

import Foundation

func solution(_ n:Int) -> Int {

    var answer = 0
    
    for i in 1..<n+1 {
        
        if n % i == 0 {
            answer += i
        }
    }
    
    return answer
}

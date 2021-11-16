//
//  ProgrammersN진수게임Level2.swift
//  BaekjoonAlgorithmSwift
//
//  Created by 박근보 on 2021/10/31.
//

func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
    
    var answerList: [String] = []
    var numberList: [Int] = []
    var yourTurnList: [Int] = []
    let alphabetList: [Int:String] = [10:"A", 11:"B", 12:"C", 13:"D", 14:"E", 15:"F"]
    var answer = ""
    
    let count = t * m
    
    for i in 0..<count {
        
        var a = i
        
        if a >= n {
            while a >= n {
                let c = a % n
                
                numberList.append(c)
                
                a = a / n
                
                if a < n {
                    numberList.append(a)
                }
            }
            
            while numberList.isEmpty == false {
                
                let d = numberList.popLast()
                answerList.append("\(d!)")
                
            }
        } else {
            answerList.append("\(a)")
        }
        
    }

    answerList.indices.filter{answerList[$0] == "10"}.forEach{answerList[$0] = "A"}
    answerList.indices.filter{answerList[$0] == "11"}.forEach{answerList[$0] = "B"}
    answerList.indices.filter{answerList[$0] == "12"}.forEach{answerList[$0] = "C"}
    answerList.indices.filter{answerList[$0] == "13"}.forEach{answerList[$0] = "D"}
    answerList.indices.filter{answerList[$0] == "14"}.forEach{answerList[$0] = "E"}
    answerList.indices.filter{answerList[$0] == "15"}.forEach{answerList[$0] = "F"}
    
    for i in 0..<count {
        let turn = i * m + p - 1
        yourTurnList.append(turn)
    }
    
    for j in yourTurnList[0..<t] {
        answer += answerList[j]
    }
    

    return answer
}

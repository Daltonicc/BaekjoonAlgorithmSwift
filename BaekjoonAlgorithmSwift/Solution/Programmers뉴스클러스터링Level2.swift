//
//  Programmers뉴스클러스터링Level2.swift
//  BaekjoonAlgorithmSwift
//
//  Created by 박근보 on 2021/11/17.
//
import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    
    let list1: [String] = str1.map{String($0).lowercased()}
    let asciiTest1: [Character] = str1.map{$0}
    let list2: [String] = str2.map{String($0).lowercased()}
    let asciiTest2: [Character] = str2.map{$0}
    
    var newList1: [String] = []
    var newList2: [String] = []
    
    var intersectAnswer = 0
    var unionAnswer = 0
    
    for i in 0..<list1.count - 1 {
        let a = list1[i] + list1[i+1]
        let b = asciiTest1[i]
        let c = asciiTest1[i+1]
        if let ascii = b.asciiValue {
            if 65 <= ascii && ascii <= 90 {
                if let ascii2 = c.asciiValue {
                    if 65 <= ascii2 && ascii2 <= 90 {
                        newList1.append(a)
                    } else if 97 <= ascii2 && ascii2 <= 122 {
                        newList1.append(a)
                    }
                }
            } else if 97 <= ascii && ascii <= 122 {
                if let ascii2 = c.asciiValue {
                    if 65 <= ascii2 && ascii2 <= 90 {
                        newList1.append(a)
                    } else if 97 <= ascii2 && ascii2 <= 122 {
                        newList1.append(a)
                    }
                }
            }
        }
    }
    
    for i in 0..<list2.count - 1 {
        let a = list2[i] + list2[i+1]
        let b = asciiTest2[i]
        let c = asciiTest2[i+1]
        if let ascii = b.asciiValue {
            if 65 <= ascii && ascii <= 90 {
                if let ascii2 = c.asciiValue {
                    if 65 <= ascii2 && ascii2 <= 90 {
                        newList2.append(a)
                    } else if 97 <= ascii2 && ascii2 <= 122 {
                        newList2.append(a)
                    }
                }
            } else if 97 <= ascii && ascii <= 122 {
                if let ascii2 = c.asciiValue {
                    if 65 <= ascii2 && ascii2 <= 90 {
                        newList2.append(a)
                    } else if 97 <= ascii2 && ascii2 <= 122 {
                        newList2.append(a)
                    }
                }
            }
        }
    }
    
    for i in newList1 {
        if newList2.contains(i) {
            if let index = newList2.firstIndex(of: i) {
                newList2.remove(at: index)
                intersectAnswer += 1
            }
            
        }
    }
    unionAnswer = newList1.count + newList2.count - intersectAnswer
    
    let answer = Double(intersectAnswer) / Double(unionAnswer)
    
    if newList1.count == 0 && newList2.count == 0 {
        return 65536
    }
    return Int(answer * 65536)
}


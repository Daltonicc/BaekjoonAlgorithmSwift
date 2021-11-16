//
//  1475.swift
//  BaekjoonAlgorithmSwift
//
//  Created by 박근보 on 2021/10/13.
//

import Foundation

//for문에서 i가 Int값을 꺼내 오기 위해서는 number를 Int가 아닌 String으로 받아줘야한다.
var number = readLine()!
var sixNine = ["6", "9"]
var checkArray = Array(repeating: 0, count: 10)

for i in number {
    //i가 6이나 9를 포함한다면 한 세트로 두 숫자 모두 커버가 가능하므로 9번째 인덱스(checkArray[9])만 1 증가시켜준다.
    //contains : ex) let cast = ["Vivien", "Marlon", "Kim", "Karl"]
//                   print(cast.contains("Marlon"))
//                   Prints "true"
//                   print(cast.contains("James"))
//                   Prints "false"
    if ["6", "9"].contains(i) {
        checkArray[9] += 1
        
    } else {
        //나머지의 경우 각 i번째의 인덱스만 1 증가시켜준다.
        checkArray[Int(String(i))!] += 1
    }
}

checkArray[9] = (checkArray[9] / 2) + (checkArray[9] % 2)

print(checkArray.max()!)

//
//  1000.swift
//  BaekjoonAlgorithmSwift
//
//  Created by 박근보 on 2021/09/30.
//

import Foundation

// 입력값을 받아주기 위해 readLine함수를 이용한다.
let a = readLine()

// 입력값을 Optional로 받기 때문에 unwrapping 작업을 해줘야 한다. 이를 위해 옵셔널 바인딩을 해준다.
// 띄어쓰기를 통해 받은 입력값들을 띄어쓰기를 기준으로 나누어 String 자료형인 하나의 배열을 만들어준다.
if let b = a {
    var array = b.components(separatedBy: " ")
    
    // Int값으로 형변환을 해주고 더한 값을 출력한다.
    let solution = Int(array[0])! + Int(array[1])!
    print(solution)
}

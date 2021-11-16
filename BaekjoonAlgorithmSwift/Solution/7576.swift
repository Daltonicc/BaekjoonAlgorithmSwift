//
//  main.swift
//  PracticeAlgorithm
//
//  Created by 박근보 on 2021/10/13.
//

import Foundation

//토마토( 1 ) 가 있는 위치에서 1초마다 상하좌우로 퍼짐. 한번 확산될 때마다 time에 +1. 더이상 확산이 불가능할 때 모두다 1일 때 반복문 중지. time값 프린트.

// m : 가로 길이, n : 세로 길이
let mn = readLine()!.split(separator: " ").map{Int(String($0))!}
let m = mn[0]
let n = mn[1]


//방향 상수. 좌측 인덱스부터 순서대로 상, 하, 좌, 우 이다.
let dx = [0, 0, -1, 1]
let dy = [1, -1, 0, 0]

//총 소요시간
var totalTime = 0

// 세로 길이만큼의 배열안에 빈 배열을 만들어준다.
var field = Array(repeating: [Int](), count: n)

// 큐
var queue = [(Int, Int)]()

// 빈 배열 field에 입력값으로 채워준다.
for i in 0..<n {
    field[i] = readLine()!.split(separator: " ").map{Int(String($0))!}
}
// 0 0 0.


//최초 토마토의 위치를 찾아서 큐에 등록
for i in 0..<n {
    for j in 0..<m {

        if field[i][j] == 1 {
        queue.append((i, j))
            
        }
    }
}

var index = 0
    
// 인덱스와 큐 안의 원소의 개수와 일치할 때, 즉 큐 안에 더 이상 원소를 넣지 못하고 모든 큐 값에 대해 처리가 완료되면 while문 중단.
while queue.count > index {
            
    let cur = queue[index]
    for k in 0..<4 {
        let nx = cur.0 + dx[k]
        let ny = cur.1 + dy[k]
                
        if nx >= 0 && nx < n && ny >= 0 && ny < m && field[nx][ny] == 0 {
            
            // 시간 누적 처리 후 새로운 값을 큐에 넣어준다. 즉 field의 인덱스들이 퍼져나가는 느낌 가령 예를들어 0 0 3                                 5 4 3
                field[nx][ny] = field[cur.0][cur.1] + 1                               // 0 3 2 이렇게 있다면 다 익고 나면 field가 ->  4 3 2  이렇게 됨.
                                                                                      // 3 2 1                                 3 2 1
                queue.append((nx, ny))
            
        }
    }
    //다음 큐를 넣기 위해 인덱스를 1 증가시킨다.
    index += 1
    totalTime = field[cur.0][cur.1]
            
}

//위에 로직을 거쳤지만 만약에 익은 토마토가 없어서 0이 있을 경우를 대비한 케이스. 0을 반환해준다.
for i in 0..<n {
    if field[i].contains(0) {
        totalTime = 0
    }
}

print(totalTime - 1)

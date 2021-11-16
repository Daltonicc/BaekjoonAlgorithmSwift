//
//  main.swift
//  PracticeAlgorithm
//
//  Created by 박근보 on 2021/10/13.
//

import Foundation

//첫째 줄 크기 입력값 받아주기
let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
//n : 세로 길이, m: 가로 길이
let n = nm[0]
let m = nm[1]

//입력받는 크기의 맵과 동일한 0으로 채워진 맵 생성
var visited = Array(repeating: Array(repeating: 0, count: m), count: n)

//가로 길이만큼 빈 대괄호 개수가 있는 field 변수 생성
var field = Array(repeating: [Int](), count: n)

//좌측 인덱스 부터 상, 하, 좌, 우 방향
let dx = [0, 0, -1, 1]
let dy = [1, -1, 0, 0]
var pictures = [Int]()
//내가 만들어낸 가상의 필드에 입력값을 받아서 테스트 케이스의 필드로 구현
for i in 0..<n {
    field[i] = readLine()!.split(separator: " ").map{Int(String($0))!}
}


for i in 0..<n {
    for j in 0..<m {
        //queue는 Int와 Int의 자료형을 가진 튜플이 배열에 담겨 있는 형태.
        var queue = [(Int, Int)]()
        var count = 0

        
        //field가 0이거나 만약 방문한 곳이라면 다음 반복으로 넘어감. 즉 field가 1이고 visited가 0일때만 아래의 구문을 실행.
        if field[i][j] == 0 || visited[i][j] == 1 { continue }
        visited[i][j] = 1
        queue.append((i, j))
        
        while !queue.isEmpty {
            
            //큐에 들어간 순서대로 해당 좌표를 꺼내주고 아래 로직에 의해 그림이 있는지 방문한 곳인지 판단한다.
            let cur = queue.removeFirst()
            count += 1
            for k in 0..<4 {
                let nx = cur.0 + dx[k]
                let ny = cur.1 + dy[k]
                
                // 예외 처리. 이동한 위치가 정해진 크기를 벗어났을 때.
                if nx < 0 || nx >= n || ny < 0 || ny >= m { continue }
                
                // 이동한 위치가 방문한 지역이거나 그림이 없다면 다음 반복으로.
                if visited[nx][ny] == 1 || field[nx][ny] == 0 { continue }
                
                //이동한 위치 방문 처리
                visited[nx][ny] = 1
                
                //해당 좌표를 큐에 다시 넣어줌.
                queue.append((nx, ny))
            }
        }
        //while문 한 사이클이 끝나면 해당 그림의 넓이 만큼 방문했다는 뜻이므로 그림 배열에 추가해줌.
        pictures.append(count)
    }
}

print(field)
print(pictures.count)

//옵셔널 처리. 그림이 하나도 없을 경우 0 반환
let max = pictures.max() ?? 0
print(max)


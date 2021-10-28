//
//  Programmers거리두기Level2.swift
//  BaekjoonAlgorithmSwift
//
//  Created by 박근보 on 2021/10/28.
//

import Foundation

func solution(_ places:[[String]]) -> [Int] {
    
    //방향(1칸 상하좌우 대각 2칸 상하좌우)
    let dx = [0, 0, -1, 1, 1, -1, 1, -1, 0, 0, -2, 2]
    let dy = [1, -1, 0, 0, -1, 1, 1, -1, 2, -2, 0, 0]
    
    //3차원 배열 만들어주기
    var list: [[[String]]] = Array(repeating: Array(repeating: [], count: 5), count: 5)
    
    var answerlist: [[Int]] = Array(repeating: [], count: 5)
    var realAnswer: [Int] = []
    
    //배열 안에 값들 담아주기
    for i in 0..<5 {
        for j in 0..<5 {
            for k in 0..<5 {
                
                let value = places[i][j][places[i][j].index(places[i][j].startIndex, offsetBy: k)]
                list[i][j].append("\(value)")
                
            }
        }
        //첫번째 테스트 케이스부터 탐색
        for j in 0..<5 {
            for k in 0..<5 {
                if list[i][j][k] == "P" {
                    let originLocation = ((j, k))
                    //"P" 기준으로 1칸 상하좌우 대각, 2칸 상하좌우 탐색
                    for m in 0..<12 {
                        
                        let nx = originLocation.0 + dx[m]
                        let ny = originLocation.1 + dy[m]
                        
                        if nx >= 0 && ny >= 0 && nx < 5 && ny < 5 {
                            if list[i][nx][ny] == "P" {
                                //상하좌우 2칸 떨어진 위치에 "P"가 있을 때, 가운데에 "X"가 있는지 체크
                                if dx[m] + dy[m] == 2 || dx[m] + dy[m] == -2 {
                                    //상 2칸 떨어졌을 때
                                    if dx[m] == -2 {
                                        let a = nx + 1
                                        if list[i][a][ny] == "X" {

                                        } else {
                                            answerlist[i].append(0)
                                        }
                                    }
                                    //하 2칸 떨어졌을 때
                                    if dx[m] == 2 {
                                        let a = nx - 1
                                        if list[i][a][ny] == "X" {

                                        } else {
                                            answerlist[i].append(0)
                                        }
                                    }
                                    //좌 2칸 떨어졌을 때
                                    if dy[m] == -2 {
                                        let a = ny + 1
                                        if list[i][nx][a] == "X" {

                                        } else {
                                            answerlist[i].append(0)
                                        }
                                    }
                                    //우 2칸 떨어졌을 때
                                    if dy[m] == 2 {
                                        let a = ny - 1
                                        if list[i][nx][a] == "X" {

                                        } else {
                                            answerlist[i].append(0)
                                        }
                                    }
                                // 좌상단, 우상단, 좌하단, 우하단에 "P"가 있을 때
                                    //우상단, 좌하단
                                }
                                if dx[m] + dy[m] == 0 {
                                    if list[i][nx][k] == "X" && list[i][j][ny] == "X" {

                                    } else { answerlist[i].append(0) }
                                    //우하단
                                }
                                if dx[m] == 1 && dy[m] == 1 {
                                    if list[i][nx][k] == "X" && list[i][j][ny] == "X" {

                                    } else { answerlist[i].append(0) }
                                    //좌상단
                                }
                                if dx[m] == -1 && dy[m] == -1 {
                                    if list[i][nx][k] == "X" && list[i][j][ny] == "X" {

                                    } else { answerlist[i].append(0) }
                                }
                                if dx[m] + dy[m] == -1 || dx[m] + dy[m] == 1 {
                                    answerlist[i].append(0)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    //answerlist에 0이 하나라도 들어가있으면 해당 대기실은 거리두기 x
    for i in 0..<5 {
        if answerlist[i].contains(0) {
            realAnswer.append(0)
        } else {
            realAnswer.append(1)
        }
    }
    print(answerlist)
    return realAnswer
}

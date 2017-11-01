//
//  MyLine.swift
//  CoordinateCalculator
//
//  Created by 심 승민 on 2017. 10. 29..
//

import Foundation

struct MyLine{
    var pointA = MyPoint()
    var pointB = MyPoint()
}

extension MyLine: FigureCalculatable{
    func getPoints() -> [MyPoint]{
        var owningPoints: [MyPoint] = []
        owningPoints.append(self.pointA)
        owningPoints.append(self.pointB)
        return owningPoints
    }
    
    // 두 점 사이 거리 계산.
    func calculate() -> Double{
        // 큰 값에서 작은 값을 빼지 않으면 결과가 nan으로 나옴.
        let differenceX = (max(self.pointA.x, self.pointB.x)-min(self.pointA.x, self.pointB.x))^2
        let differenceY = (max(self.pointA.y, self.pointB.y)-min(self.pointA.y, self.pointB.y))^2
        return sqrt( Double((differenceX + differenceY)) )
    }
}

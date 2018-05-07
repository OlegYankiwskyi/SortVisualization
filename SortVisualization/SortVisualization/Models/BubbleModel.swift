//
//  BubbleModel.swift
//  SortVisualization
//
//  Created by Oleg Yankiwskyi on 5/7/18.
//  Copyright © 2018 Oleg Yankiwskyi. All rights reserved.
//

import Foundation

class BubbleModel: TypeSortModelProtocol {
    
    private var array = Array<Int>.makeList(count: 10, range: 999)
    var lastStep = 0
    
    var count: Int {
        get {
            return array.count
        }
    }
    
    func get(at index: Int) -> Int {
        return array[index]
    }
    
    func stepSort() -> (at: Int, to: Int, isFinish: Bool ) {
        var temp: Int = 0

        for i in lastStep ... array.count-1 {
            lastStep = i
            for j in i ... array.count-1 {
                if array[j] < array[i] {
                    temp = array[i]
                    array[i] = array[j]
                    array[j] = temp

                    return (at: i, to: j, isFinish: false)
                }
            }
        }
        return (at: 0, to: 0, isFinish: true)
    }
}

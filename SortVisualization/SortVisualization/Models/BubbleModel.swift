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
    
    func updateData() {
        array = Array<Int>.makeList(count: 10, range: 999)
        lastStep = 0
    }
    
    func stepSort() -> (at: Int, to: Int, isFinish: Bool ) {
        for i in lastStep ... array.count-1 {
            lastStep = i
            for j in 0 ... array.count-2 {
                if array[j] < array[j+1] {
                    array.swapAt(j, j+1)
                    return (at: j, to: j+1, isFinish: false)
                }
            }
        }
        return (at: 0, to: 0, isFinish: true)
    }
}

//
//  InsertModel.swift
//  SortVisualization
//
//  Created by Oleg Yankiwskyi on 5/7/18.
//  Copyright © 2018 Oleg Yankiwskyi. All rights reserved.
//

import Foundation

class InsertModel: TypeSortModelProtocol {
    
    private var array = Array<Int>.makeList(count: 10, range: 999)
    var lastStep = 1
    
    var count: Int {
        return array.count
    }
    
    func get(at index: Int) -> Int {
        return array[index]
    }
    
    func updateData() {
        array = Array<Int>.makeList(count: 10, range: 999)
        lastStep = 1
    }
    
    func stepSort() -> (at: Int, to: Int, isFinish: Bool) {
        var key = 0
        var j = 0
        
        for i in lastStep ... array.count-1 {
            key = array[i]
            j = i-1
        
            while j >= 0 && array[j] > key {
                array.swapAt(j+1, j)
                return (at: j+1, to: j, isFinish: false)
            }
        }
        return (at: 0, to: 0, isFinish: true)
    }
}

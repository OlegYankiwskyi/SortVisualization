//
//  SelectionModel.swift
//  SortVisualization
//
//  Created by Oleg Yankiwskyi on 5/7/18.
//  Copyright © 2018 Oleg Yankiwskyi. All rights reserved.
//

import Foundation

class SelectionModel: TypeSortModelProtocol {
    
    private var array = Array<Int>.makeList(count: 10, range: 999)
    var lastStep = 0
    
    var count: Int {
        return array.count
    }
    
    func get(at index: Int) -> Int {
        return array[index]
    }
    
    func stepSort() -> (at: Int, to: Int, isFinish: Bool) {
        guard array.count > 1 else { return (at: 0, to: 0, isFinish: true) }
        
        for i in lastStep ..< array.count - 1 {
            lastStep = i
            var lowest = i
            for y in i + 1 ..< array.count {
                if array[y] < array[lowest] {
                    lowest = y
                }
            }
            
            if i != lowest {
                array.swapAt(i, lowest)
                return (at: i, to: lowest, isFinish: false)
            }
        }
        return (at: 0, to: 0, isFinish: true)
    }
}

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
    
    func stepSort() -> (at: Int, to: Int, isFinish: Bool) {
       //TO DO
        return (at: 0, to: 0, isFinish: true)
    }
}

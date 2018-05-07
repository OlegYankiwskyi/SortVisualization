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
    
    var count: Int {
        get {
            return array.count
        }
    }
    
    func get(at index: Int) -> Int {
        return array[index]
    }
    
}

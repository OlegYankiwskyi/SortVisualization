//
//  ArrayTypeSort.swift
//  SortVisualization
//
//  Created by Oleg Yankiwskyi on 5/7/18.
//  Copyright © 2018 Oleg Yankiwskyi. All rights reserved.
//

import Foundation

class ArrayTypeSort: ArrayTypeSortProtocol {

    private let arrayTypeSort = [
                        TypeSortEntity(title: "Insert", typeSort: .insert),
                        TypeSortEntity(title: "Bubble", typeSort: .bubble),
                        TypeSortEntity(title: "Selection", typeSort: .selection)
                    ]
 
    subscript(index: Int) -> TypeSortEntity {
        get {
            return arrayTypeSort[index]
        }
    }

    
    var count: Int {
        return arrayTypeSort.count
    }
    
}

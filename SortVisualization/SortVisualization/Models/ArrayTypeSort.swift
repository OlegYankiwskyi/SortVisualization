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
                        TypeSortEntity(title: "Insert", typeSort: TypeSortEnum.insert),
                        TypeSortEntity(title: "Bubble", typeSort: TypeSortEnum.bubble),
                        TypeSortEntity(title: "Selection", typeSort: TypeSortEnum.selection)
                    ]
 
    func at(index: Int) -> TypeSortEntity {
        return arrayTypeSort[index]
    }
    
    var count: Int {
        return arrayTypeSort.count
    }
    
}

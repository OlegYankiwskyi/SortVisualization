//
//  TypeSortEntity.swift
//  SortVisualization
//
//  Created by Oleg Yankiwskyi on 5/7/18.
//  Copyright © 2018 Oleg Yankiwskyi. All rights reserved.
//

import Foundation

class TypeSortEntity {
    var title: String
    var typeSort: TypeSortEnum
    
    init(title: String, typeSort: TypeSortEnum) {
        self.title = title
        self.typeSort = typeSort
    }
}

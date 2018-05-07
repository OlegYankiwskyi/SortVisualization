//
//  FactoryModelTypeSort.swift
//  SortVisualization
//
//  Created by Oleg Yankiwskyi on 5/7/18.
//  Copyright © 2018 Oleg Yankiwskyi. All rights reserved.
//

import Foundation

class FactoryModelTypeSort {
    static func getModel(type: TypeSortEnum) -> TypeSortModelProtocol {
        
        switch type {
        case .bubble:
            return BubbleModel()
//        case .insert:
//            return "insert"
//        case .selection:
//            return "selection"
        default:
            return BubbleModel()//TO DO
        }
    }
}

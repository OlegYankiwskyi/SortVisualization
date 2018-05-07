//
//  TypeSortModelProtocol.swift
//  SortVisualization
//
//  Created by Oleg Yankiwskyi on 5/7/18.
//  Copyright © 2018 Oleg Yankiwskyi. All rights reserved.
//

import Foundation

protocol TypeSortModelProtocol {
    var count: Int { get }
    func get(at: Int) -> Int
}

//
//  TypeSortCellTableViewCell.swift
//  SortVisualization
//
//  Created by Oleg Yankiwskyi on 5/7/18.
//  Copyright © 2018 Oleg Yankiwskyi. All rights reserved.
//

import UIKit

class TypeSortCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    
    func configureWith(data: String) {
        label.text = data
    }

}

//
//  SortVisualization.swift
//  SortVisualization
//
//  Created by Oleg Yankiwskyi on 5/7/18.
//  Copyright © 2018 Oleg Yankiwskyi. All rights reserved.
//

import UIKit

class SortVisualization: UIViewController {

    var model: TypeSortModelProtocol!
    @IBOutlet weak var tableData: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapButtonNextStep(_ sender: Any) {
        let result = model.stepSort()
        if !result.isFinish {
            let indexPath1 = IndexPath(row: result.at, section: 0)
            let indexPath2 = IndexPath(row: result.to, section: 0)
            tableData.beginUpdates()
            tableData.moveRow(at: indexPath1, to: indexPath2)
            tableData.moveRow(at: indexPath2, to: indexPath1)
            tableData.endUpdates()
        }
    }
}

extension SortVisualization: UITableViewDataSource, UITableViewDelegate  {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: DataCell.reuseIdentifier, for: indexPath) as? DataCell else {
            return UITableViewCell()
        }
        cell.configureWith(data: String(model.get(at: indexPath.row)))
        return cell
    }
}


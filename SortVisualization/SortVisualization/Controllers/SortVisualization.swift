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
    @IBOutlet weak var button: UIButton!
    let titleButtonReload = "Reload"
    let titleButtonNextStep = "Next Step"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapButtonNextStep(_ sender: Any) {
        let result = model.stepSort()
        if result.isFinish {
            if button.titleLabel?.text == titleButtonNextStep {
                button.setTitle(titleButtonReload, for: .normal)
            }
            showAlert()
        } else {
            let indexPath1 = IndexPath(row: result.at, section: 0)
            let indexPath2 = IndexPath(row: result.to, section: 0)
            tableData.beginUpdates()
            tableData.moveRow(at: indexPath1, to: indexPath2)
            tableData.moveRow(at: indexPath2, to: indexPath1)
            tableData.endUpdates()
        }
    }
}

extension SortVisualization: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: DataCell.reuseIdentifier, for: indexPath) as? DataCell else {
            return UITableViewCell()
        }
        cell.configureWith(data: String(model[indexPath.row]))
        return cell
    }
}

extension SortVisualization {
    func showAlert() {
        let alert = UIAlertController(title: "Sorting done", message: "You can update array and repeat sorting", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "update array", style: .default, handler: { (alert: UIAlertAction!) in
            self.model.updateData()
            self.tableData.reloadData()
            self.button.setTitle(self.titleButtonNextStep, for: .normal)
        }))
        self.present(alert, animated: true, completion: nil)
    }
}

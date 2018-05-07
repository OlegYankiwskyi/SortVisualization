//
//  MainViewController.swift
//  SortVisualization
//
//  Created by Oleg Yankiwskyi on 5/7/18.
//  Copyright © 2018 Oleg Yankiwskyi. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    let model = ArrayTypeSort()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Main"
    }
}

extension MainViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TypeSortCell.reuseIdentifier, for: indexPath) as? TypeSortCell else {
            return UITableViewCell()
        }
        cell.configureWith(data: model.at(index: indexPath.row).title)
        return cell
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let sortVisualization = storyboard.instantiateViewController(withIdentifier: SortVisualization.storyboardIdentifier) as? SortVisualization
            else {
                print("Error instantiate ViewController: \(SortVisualization.storyboardIdentifier)")
                return
        }
        
        let entityModel = model.at(index: indexPath.row)
        sortVisualization.model = FactoryModelTypeSort.getModel(type: entityModel.typeSort)
        sortVisualization.title = entityModel.title
        self.navigationController?.pushViewController(sortVisualization, animated: true)
    }
}











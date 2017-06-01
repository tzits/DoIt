//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Toby Zitsman on 6/1/17.
//  Copyright © 2017 Toby Zitsman. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    var task = Task()
    
    var previousVC = TasksViewController()
    
    @IBOutlet weak var taskLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if task.important {
            taskLabel.text = "❗️\(task.name)"
        } else {
            taskLabel.text = task.name
        }
    }

    @IBAction func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.DoItTable.reloadData()
        navigationController?.popViewController(animated: true)

    }

}

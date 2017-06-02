//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Toby Zitsman on 6/1/17.
//  Copyright © 2017 Toby Zitsman. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    var task: Task? = nil
    
    @IBOutlet weak var taskLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if task!.important {
            taskLabel.text = "❗️\(task!.name!)"
        } else {
            taskLabel.text = task!.name!
        }
    }

    @IBAction func completeTapped(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        navigationController?.popViewController(animated: true)

    }

}

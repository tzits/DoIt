//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Toby Zitsman on 5/22/17.
//  Copyright © 2017 Toby Zitsman. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    
    @IBOutlet weak var important: UISwitch!
    
    var previousVC = ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func addTapped(_ sender: Any) {
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = important.isOn
    }


}

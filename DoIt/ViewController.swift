//
//  ViewController.swift
//  DoIt
//
//  Created by Toby Zitsman on 5/21/17.
//  Copyright © 2017 Toby Zitsman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var DoItTable: UITableView!
    
    var tasks : [Task] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        tasks = makeTasks()
        
        DoItTable.dataSource = self
        DoItTable.delegate = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if task.important {
            cell.textLabel?.text = "❗️\(task.name)"
        } else {
        cell.textLabel?.text = task.name
        }
        return cell
    }
    

    func makeTasks() -> [Task] {
        let task1 = Task()
        task1.name = "Go Running"
        
        let task2 = Task()
        task2.name = "Make Pizza"
        task2.important = true
        
        let task3 = Task()
        task3.name = "Yoga"
        task3.important = true
        
        return [task1,task2,task3]
    }
    
    @IBAction func plusTapped(_ sender: AnyObject) {
        performSegue(withIdentifier: "addSegue", sender: nil)
    }
}


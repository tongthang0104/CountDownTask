//
//  TaskListViewController.swift
//  CountDownTask
//
//  Created by Thang H Tong on 1/28/16.
//  Copyright © 2016 Thang. All rights reserved.
//

import UIKit

class TaskListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var task: [Task] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    // MARK: - Navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "taskDetail" {
            let destinationController = segue.destinationViewController as! TaskDetailViewController
            _ = destinationController.view
            
            if let indexPath = tableView.indexPathForSelectedRow {
                let task = TaskController.shareController.taskArray[indexPath.row]
                destinationController.updateWithTask(task)
            }
        }
    }
}

extension TaskListViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TaskController.shareController.taskArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("taskCell", forIndexPath: indexPath) as! TaskListTableViewCell
        let task = TaskController.shareController.taskArray[indexPath.row]
        cell.updateWithTask(task)
        return cell
    }
}


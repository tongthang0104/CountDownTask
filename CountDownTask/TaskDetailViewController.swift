//
//  TaskDetailViewController.swift
//  CountDownTask
//
//  Created by Thang H Tong on 1/28/16.
//  Copyright © 2016 Thang. All rights reserved.
//

import UIKit

class TaskDetailViewController: UIViewController {

    
    var task: Task?
    @IBOutlet weak var taskNameLabel: UILabel!
    @IBOutlet weak var bodyTextView: UITextView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var finishTaskLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func pauseButtonTapped(sender: UIButton) {
        
        
        
    }
    @IBAction func startButtonTapped(sender: UIButton) {
        
        
        
        
        
        
    }
    
    
    func updateWithTask(task: Task) {
        self.task = task
        self.taskNameLabel.text = task.name
        self.bodyTextView.text = task.bodyText
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

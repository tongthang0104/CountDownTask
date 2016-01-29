//
//  TaskController.swift
//  CountDownTask
//
//  Created by Thang H Tong on 1/28/16.
//  Copyright © 2016 Thang. All rights reserved.
//

import Foundation

class TaskController {
    
    static let shareController = TaskController()
    
    var taskArray: [Task] = []
    
    var completedTasks: [Task] {
        return taskArray.filter({$0.isComplete.boolValue})
    }
   
    var inCompletedTasks: [Task] {
        return taskArray.filter({$0.isComplete.boolValue})
    }
    
    
    func addTask(task: Task) {
        taskArray.append(task)
    }
    
    func removeTask(task: Task) {
        if let index = self.taskArray.indexOf(task) {
            taskArray.removeAtIndex(index)
        }
    }
}
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
    
    var mockTask: [Task] {
        let task1 = Task(name: "go to school", bodyText: "", isComplete: false)
        let task2 = Task(name: "eat", bodyText: "one bowl of rice", isComplete: true)
        let task3 = Task(name: "go swimming", bodyText: "at 6", isComplete: false)
        return [task1, task2, task3]
    }
    
    init() {
        self.taskArray = mockTask
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
//
//  Task.swift
//  CountDownTask
//
//  Created by Thang H Tong on 1/28/16.
//  Copyright © 2016 Thang. All rights reserved.
//

import Foundation

class Task: Equatable {
    var name: String
    var bodyText: String
    var timeToComplete: Timer
    var isComplete: Bool
    
    init(name: String, bodyText: String, timeToComplete: Timer, isComplete: Bool) {
        self.name = name
        self.timeToComplete = timeToComplete
        self.bodyText = bodyText
        self.isComplete = isComplete
    }
   
}

func ==(lhs: Task, rhs: Task) -> Bool {
    return (lhs.name == rhs.name) && (lhs.bodyText == rhs.bodyText)
}
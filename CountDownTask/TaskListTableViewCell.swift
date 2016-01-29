//
//  TaskListTableViewCell.swift
//  CountDownTask
//
//  Created by Thang H Tong on 1/28/16.
//  Copyright © 2016 Thang. All rights reserved.
//

import UIKit

class TaskListTableViewCell: UITableViewCell {

    @IBOutlet weak var timeStampLabel: UILabel!
    @IBOutlet weak var taskNameLabel: UILabel!
    @IBOutlet weak var taskCompleteButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBAction func taskCompletButtonTapped(sender: AnyObject) {
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

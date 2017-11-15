//
//  Task.swift
//  Taskify
//
//  Created by Wermager, William T on 11/14/17.
//  Copyright © 2017 Wermager, William T. All rights reserved.
//

import UIKit

class Task: NSObject {
    var title: String
    var dueDt: Date
    var notes: String
    var color: Int // Have 3 colors minimum and each number corresponds to a color
    var hiPriority: Bool // If true we'll have a small picture of flag on that task
    
    init(title: String, dueDt: Date, notes: String, color: Int, hiPriority: Bool) {
        self.title = title
        self.dueDt = dueDt
        self.notes = notes
        self.color = color
        self.hiPriority = hiPriority
    }
}

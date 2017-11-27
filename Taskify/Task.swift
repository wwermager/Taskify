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
    var dueDt: Date?
    var notes: String?
    var color: Int // work, school, or other
    var hiPriority: Bool // If true we'll have a small picture of flag on that task
    
    init(title: String, dueDt: Date? = nil, notes: String? = nil, color: Int, hiPriority: Bool) {
        self.title = title
        self.dueDt = dueDt
        self.notes = notes
        self.color = color
        self.hiPriority = hiPriority
    }
}

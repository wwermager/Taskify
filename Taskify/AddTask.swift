//
//  AddTask.swift
//  Taskify
//
//  Created by Wermager, William T on 11/15/17.
//  Copyright © 2017 Wermager, William T. All rights reserved.
//

import UIKit

class AddTask: UIViewController {
    
    
    let backBarButton: UIBarButtonItem
    let doneBarButton: UIBarButtonItem
    var nav: UINavigationItem
    let navBar: UINavigationBar

    let taskTitle: UITextField
    let titleLabel: UILabel
    let taskNote: UITextView // need text view to get multiline
    let noteLabel: UILabel
    let dueDate: UIDatePicker
    let dateLabel: UILabel

    
    init() {
        // Navigation Bar
        navBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height)/9))
        nav = UINavigationItem(title: "New Task")
        backBarButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: nil, action: #selector(cancelTapped))
        doneBarButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(doneTapped))

        
        // Input field declarations
        taskTitle = UITextField()
        titleLabel = UILabel()
        taskNote = UITextView()
        noteLabel = UILabel()
        dueDate = UIDatePicker()
        dateLabel = UILabel()
        

        super.init(nibName: nil, bundle: nil)
        
        // Navigation Bar Buttons
        nav.leftBarButtonItem = backBarButton
        nav.rightBarButtonItem = doneBarButton
        navBar.setItems([nav], animated: false)

        self.view = UIView(frame: CGRect(x: 0, y: PHONEHEIGHT/9, width: PHONEWIDTH, height: PHONEHEIGHT-PHONEHEIGHT/9))
        
        // Input Field Layouts
        taskTitle.frame = CGRect(x: 10, y: (PHONEHEIGHT/9)+50, width: PHONEWIDTH/2, height: 50)
        taskTitle.textColor = UIColor.black
        taskTitle.font = UIFont.systemFont(ofSize: 17.0)
        taskTitle.placeholder = "New Task"
        taskTitle.backgroundColor = UIColor.white
        taskTitle.borderStyle = UITextBorderStyle.bezel
        taskTitle.keyboardType = UIKeyboardType.default
        taskTitle.returnKeyType = UIReturnKeyType.done
        taskTitle.clearButtonMode = UITextFieldViewMode.always
        taskTitle.autocorrectionType = .no
        
        titleLabel.text = "Title:"
        titleLabel.frame = CGRect(x:10,y:(PHONEHEIGHT/9),width: PHONEWIDTH-20, height: 50)
        titleLabel.textColor = UIColor.black
        
        taskNote.frame = CGRect(x: 10, y: (PHONEHEIGHT/9)+150, width: PHONEWIDTH-20, height: 150)
        taskNote.textColor = UIColor.black
        taskNote.font = UIFont.systemFont(ofSize: 17.0)
//        taskNote.placeholder = "New Task"
        taskNote.backgroundColor = UIColor.white
//        taskNote.borderStyle = UITextBorderStyle.bezel
        taskNote.keyboardType = UIKeyboardType.default
        taskNote.returnKeyType = UIReturnKeyType.done
//        taskNote.clearButtonMode = UITextFieldViewMode.always
        taskNote.autocorrectionType = .no
        
        noteLabel.text = "Notes:"
        noteLabel.frame = CGRect(x:10,y:(PHONEHEIGHT/9)+100,width: 200, height: 50)
        noteLabel.textColor = UIColor.black
        
        dateLabel.text = "Due Date:"
        dateLabel.frame = CGRect(x:10,y:PHONEHEIGHT-150,width: 200, height: 50)
        dateLabel.textColor = UIColor.black
        
        dueDate.frame = CGRect(x: 10, y: PHONEHEIGHT-100, width: PHONEWIDTH-20, height: 100)
        dueDate.minimumDate = NSDate() as Date
        dueDate.datePickerMode = .date
//        taskTitle.delegate = self
        
//        taskTitle.addTarget(self, action: Selector(("textFieldDidChange:")), for: UIControlEvents.editingChanged)
//        name2.addTarget(self, action: "textFieldDidChange:", forControlEvents: UIControlEvents.EditingChanged)
//        name3.addTarget(self, action: "textFieldDidChange:", forControlEvents: UIControlEvents.EditingChanged)
//        name4.addTarget(self, action: "textFieldDidChange:", forControlEvents: UIControlEvents.EditingChanged)
        
        // Add objects to view
        self.view.addSubview(taskTitle)
        self.view.addSubview(titleLabel)
        self.view.addSubview(taskNote)
        self.view.addSubview(dueDate)
        self.view.addSubview(dateLabel)
        self.view.addSubview(noteLabel)
        self.view.addSubview(navBar)

    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @objc func cancelTapped(sender: UIBarButtonItem) {
        let svc: ViewController = ViewController()
        self.present(svc, animated: false) { () -> Void in
            NSLog("Returned to Tasks")
        }
    }
    @objc func doneTapped(sender: UIBarButtonItem) {
        // Function needs to add task to array of tasks
        let svc: ViewController = ViewController()
        self.present(svc, animated: false) { () -> Void in
            NSLog("Returned to Tasks")
        }
    }
    //    Implement Later: Will allow for required fields by disabling done button
//    func textFieldDidChange(textField: UITextField) {
//        if taskTitle.text == "" {//|| name2.text == "" || name3.text == "" || name4.text == "" {
//            //Disable button
//            doneBarButton.isEnabled = false
//        } else {
//            //Enable button
//            doneBarButton.isEnabled = true
//        }
//    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

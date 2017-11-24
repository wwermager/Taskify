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
    
    
    init() {
        // Navigation Bar
        navBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height)/9))
        nav = UINavigationItem(title: "New Task")
        backBarButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: nil, action: #selector(cancelTapped))
        doneBarButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(doneTapped))
        
        // Input field declarations
        taskTitle = UITextField()
        
        super.init(nibName: nil, bundle: nil)
        
        // Navigation Bar Buttons
        nav.leftBarButtonItem = backBarButton
        nav.rightBarButtonItem = doneBarButton
        navBar.setItems([nav], animated: false)

        self.view = UIView(frame: CGRect(x: 0, y: PHONEHEIGHT/9, width: PHONEWIDTH, height: PHONEHEIGHT-PHONEHEIGHT/9))
        
        // Input Field Layouts
        taskTitle.frame = CGRect(x: (PHONEWIDTH/2)-100, y: PHONEHEIGHT/2, width: 200, height: 50)
        taskTitle.textColor = UIColor.black
        taskTitle.font = UIFont.systemFont(ofSize: 17.0)
        taskTitle.placeholder = "<enter new top label>"
        taskTitle.backgroundColor = UIColor.white
        taskTitle.borderStyle = UITextBorderStyle.bezel
        taskTitle.keyboardType = UIKeyboardType.default
        taskTitle.returnKeyType = UIReturnKeyType.done
        taskTitle.clearButtonMode = UITextFieldViewMode.always
//        taskTitle.delegate = self
        
//        taskTitle.addTarget(self, action: "textFieldDidChange:", forControlEvents: UIControlEvents.EditingChanged)
//        name2.addTarget(self, action: "textFieldDidChange:", forControlEvents: UIControlEvents.EditingChanged)
//        name3.addTarget(self, action: "textFieldDidChange:", forControlEvents: UIControlEvents.EditingChanged)
//        name4.addTarget(self, action: "textFieldDidChange:", forControlEvents: UIControlEvents.EditingChanged)
        // Add objects to view
        self.view.addSubview(taskTitle)
        self.view.addSubview(navBar)
        
//        Need to add text fields to subview
        
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
//        if name1.text == "" || name2.text == "" || name3.text == "" || name4.text == "" {
//            //Disable button
//        } else {
//            //Enable button
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

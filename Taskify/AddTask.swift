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
    let textField1
    : UITextField
    
    
    init() {
        navBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height)/9))
        nav = UINavigationItem(title: "New Task")
        backBarButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: nil, action: #selector(cancelTapped))
        doneBarButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(doneTapped))
        let textField1: UITextfield = "Task"
        super.init(nibName: nil, bundle: nil)
        nav.leftBarButtonItem = backBarButton
        nav.rightBarButtonItem = doneBarButton
        navBar.setItems([nav], animated: false)

        self.view = UIView(frame: CGRect(x: 0, y: PHONEHEIGHT/9, width: PHONEWIDTH, height: PHONEHEIGHT-PHONEHEIGHT/9))
        self.view.addSubview(navBar)
        textField1.frame = CGRect(x: PHONEHEIGHT-100, y: PHONEWIDTH-125,
                                  width: 200, height: 50)
        textField1.textColor = UIColor.black
        textField1.font = UIFont.systemFont(ofSize: 17.0)
        textField1.placeholder = "Task title"
        textField1.backgroundColor = UIColor.white
        textField1.borderStyle = UITextBorderStyle.bezel
        textField1.keyboardType = UIKeyboardType.default
        textField1.returnKeyType = UIReturnKeyType.done
        textField1.clearButtonMode = UITextFieldViewMode.always
        textField1.delegate = self
        self.view.addSubview(textField1);        let alert = UIAlertController(title: "Task", message: "Enter task", preferredStyle: .alert)
        
        //2. Add the text field. You can configure it however you need.
        alert.addTextField { (textField) in
            textField.text = "Enter task"
        }
        
        // 3. Grab the value from the text field, and print it when the user clicks OK.
        //alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert] (_) in
          //  let textField = alert?.textFields![0] // Force unwrapping because we know it /exists.
            //print("Text field: \(textField?.text)")
        //}))
        
        // 4. Present the alert.
        //self.present(alert, animated: true, completion: nil)
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
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

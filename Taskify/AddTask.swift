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
    
    
    init() {
        navBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height)/9))
        nav = UINavigationItem(title: "New Task")
        backBarButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: nil, action: #selector(cancelTapped))
        doneBarButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(doneTapped))
        
        super.init(nibName: nil, bundle: nil)
        nav.leftBarButtonItem = backBarButton
        nav.rightBarButtonItem = doneBarButton
        navBar.setItems([nav], animated: false)

        self.view = UIView(frame: CGRect(x: 0, y: PHONEHEIGHT/9, width: PHONEWIDTH, height: PHONEHEIGHT-PHONEHEIGHT/9))
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
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

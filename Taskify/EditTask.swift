//
//  EditTask.swift
//  Taskify
//
//  Created by Wermager, William T on 11/15/17.
//  Copyright © 2017 Wermager, William T. All rights reserved.
//

import UIKit

class EditTask: AddTask {
    
    override init() {
        super.init()
        
        nav = UINavigationItem(title: "Edit Task")
        nav.leftBarButtonItem = backBarButton
        nav.rightBarButtonItem = doneBarButton
        navBar.setItems([nav], animated: false)
        
        self.view = UIView(frame: CGRect(x: 0, y: PHONEHEIGHT/9, width: PHONEWIDTH, height: PHONEHEIGHT-PHONEHEIGHT/9))
        self.view.addSubview(navBar)
 
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

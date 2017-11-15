//
//  AddTask.swift
//  Taskify
//
//  Created by Wermager, William T on 11/15/17.
//  Copyright © 2017 Wermager, William T. All rights reserved.
//

import UIKit

class AddTask: UIViewController {
    var label: UILabel
    
    let backBarButton: UIBarButtonItem
    let nav: UINavigationItem
    let navBar: UINavigationBar
    
    
    init(string: String) {
        label = UILabel()
        navBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height)/9))
        nav = UINavigationItem(title: "New Task")
        backBarButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: nil, action: #selector(cancelTapped))
        
        
        super.init(nibName: nil, bundle: nil)
        nav.leftBarButtonItem = backBarButton;
        navBar.setItems([nav], animated: false);
        
        
        let screenSize: CGSize = UIScreen.main.bounds.size
        let centerX: CGFloat = screenSize.width / 2
        let centerY: CGFloat = screenSize.height / 2
        label.text = string
        label.backgroundColor = UIColor.clear
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.center
        label.frame = CGRect(x: centerX-125, y: centerY-25, width: 250, height: 50)
        label.isUserInteractionEnabled = true
        
        
        self.view = UIView(frame: CGRect(x: 0, y: PHONEHEIGHT/9, width: PHONEWIDTH, height: PHONEHEIGHT-PHONEHEIGHT/9))
        //label.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(SecondaryViewController.handleTap(_:))))
        self.view.addSubview(label)
        self.view.addSubview(navBar)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @objc func cancelTapped(sender: UIBarButtonItem) {
        print("Cancel Button Tapped")
        let svc: ViewController = ViewController()
        //svc.view.backgroundColor = UIColor.lightGray
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

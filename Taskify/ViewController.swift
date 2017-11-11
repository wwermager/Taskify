//
//  ViewController.swift
//  Taskify
//
//  Created by Wermager, William T on 10/31/17.
//  Copyright © 2017 Wermager, William T. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // public/private var declarations go here as needed
    let addBarButton: UIBarButtonItem
    let nav: UINavigationItem
    let navBar: UINavigationBar
    // end declarations
    
    init() {
        print("entered init")
        
        // Initialize and position navigation bar
        navBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height)/5))
        nav = UINavigationItem(title: "Taskify")
        addBarButton = UIBarButtonItem(barButtonSystemItem: .add, target: nil, action: #selector(addTapped))
        // Any use of self. must come after this
        super.init(nibName: nil, bundle: nil)
        
        // Add navbar to current view (ViewController) and add '+' symbol
        self.view.addSubview(navBar)


       
        nav.rightBarButtonItem = addBarButton;
        navBar.setItems([nav], animated: false);
        //self.addBarButton.isEnabled = true
        print("finished init")
        
    }
    
    @objc func addTapped(sender: UIBarButtonItem) {
        print("Add Button Tapped")
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        print("in viewDidLoad()")
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


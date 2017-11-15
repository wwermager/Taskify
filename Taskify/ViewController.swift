//
//  ViewController.swift
//  Taskify
//
//  Created by Wermager, William T on 10/31/17.
//  Copyright © 2017 Wermager, William T. All rights reserved.
//

import UIKit
var tasks: [(String,[Task])] = [("No Due Date",[]),("Today",[]),("Tomorrow",[]),("This Week",[]),("Later",[])]
let DUEDATERANGECELL: String = "CourseTypeCell"
class ViewController: UITableViewController {
    
    // public/private var declarations go here as needed
    let addBarButton: UIBarButtonItem
    let nav: UINavigationItem
    let navBar: UINavigationBar
    private let PHONEWIDTH: CGFloat
    private let PHONEHEIGHT: CGFloat
    private var taskView: UITableView
    // end declarations
    
    init() {
        print("entered init")
        PHONEWIDTH = UIScreen.main.bounds.size.width
        PHONEHEIGHT = UIScreen.main.bounds.size.height
        
        // Initialize and position navigation bar
        navBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height)/9))
        nav = UINavigationItem(title: "Taskify")
        addBarButton = UIBarButtonItem(barButtonSystemItem: .add, target: nil, action: #selector(addTapped))
        
        // Task tableview stuff
        taskView = UITableView(frame: CGRect(x: 0, y: PHONEHEIGHT/9, width: PHONEWIDTH, height: PHONEHEIGHT/9), style: UITableViewStyle.plain)
       
        // Any use of self. must come after this
        //super.init(nibName: nil, bundle: nil)
        super.init(style: UITableViewStyle.plain)
        
        // Add navbar to current view (ViewController) and add '+' symbol
        self.view.addSubview(navBar)
        nav.rightBarButtonItem = addBarButton;
        navBar.setItems([nav], animated: false);
        
        // TaskView stuff
        taskView.dataSource = self
        taskView.delegate = self
        self.view.addSubview(taskView)
        
        print("finished init")
        
    }
    
    @objc func addTapped(sender: UIBarButtonItem) {
        print("Add Button Tapped")
        /*
         Function needs to open another view with following fields:
         Title:
         Due Date: (not a required field as those unspecified  will sit in top of 
         Group: (drop down with things like School, Work, and Personal each with own color)
         Notes:
         
        */
    }
    func editTable() {
        taskView.setEditing(!taskView.isEditing, animated: true)
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return tasks.count
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let (_,A) = tasks[section]
        return A.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let CELL_HEIGHT: CGFloat = 50
        var cell = tableView.dequeueReusableCell(withIdentifier: DUEDATERANGECELL) as UITableViewCell?
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: DUEDATERANGECELL)
        }
        var taskEntry: UITextView

            taskEntry = UITextView(frame: CGRect(x: 0, y: 0, width: PHONEWIDTH, height: CELL_HEIGHT))
        
        taskEntry.tag = 1
        // Alternates colors
        if indexPath.row % 2 == 0 {
            taskEntry.backgroundColor = UIColor.lightGray
        }
        else {
            taskEntry.backgroundColor = UIColor.gray
        }
        taskEntry.font = UIFont.boldSystemFont(ofSize: 13.0)
        cell!.contentView.addSubview(taskEntry)
        let (_,A) = tasks[indexPath.section]
        let task: Task = A[indexPath.row]
        // Unwrapping notes this way likely to cause an error. Use if statement to handle nil?
        taskEntry.text = task.title + "\n" + task.notes!
        taskEntry.isUserInteractionEnabled = false
        return cell!
    }
    
    // UITableViewDelegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let (_,A) = tasks[indexPath.section]
        let alert: UIAlertController = UIAlertController(title:"\(A[indexPath.row].number): \(A[indexPath.row].title)", message:A[indexPath.row].topics, preferredStyle:UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style:
            UIAlertActionStyle.default, handler:
            {(action: UIAlertAction!) -> Void in
                // nothing to do
        }))
        tableView.deselectRow(at: indexPath, animated: false)
        self.present(alert, animated: true, completion:
            {() -> Void in
                // nothing to do
        })
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let result: CGSize = UIScreen.main.bounds.size
        let label: UILabel = UILabel(frame: CGRect(x: 0, y: 40, width: result.width, height: 20))
        label.backgroundColor = UIColor.white
        let (S,_) = tasks[section]
        label.text = S
        label.font = UIFont.boldSystemFont(ofSize: 18.0)
        return label
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        return UITableViewCellEditingStyle.delete
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        switch editingStyle {
        case UITableViewCellEditingStyle.delete:
            tasks[indexPath.section].1.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.top)
        default:
            break
        }
    }
}


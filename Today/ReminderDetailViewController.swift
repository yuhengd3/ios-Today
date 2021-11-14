//
//  ReminderDetailViewController.swift
//  Today
//
//  Created by Yuheng Ding on 11/9/21.
//

import UIKit

class ReminderDetailViewController: UITableViewController {
    
    private var reminder: Reminder?
    // private var detailViewDataSource: ReminderDetailViewDataSource?
    private var dataSource: UITableViewDataSource?
    
    func configure(with reminder: Reminder) {
        // print("configure")
        self.reminder = reminder
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setEditing(false, animated: false)
        navigationItem.setRightBarButton(editButtonItem, animated: false)
        
        // detailViewDataSource = ReminderDetailViewDataSource(reminder: reminder)
        // tableView.dataSource = detailViewDataSource
    }
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        if editing {
            dataSource = ReminderDetailEditDataSource()
        } else {
            guard let reminder = reminder else {
                fatalError("No reminder found for detail view")
            }
            dataSource = ReminderDetailViewDataSource(reminder: reminder)
        }
        tableView.dataSource = dataSource
        tableView.reloadData()
    }
    

}

//
//  EditDateCell.swift
//  Today
//
//  Created by Yuheng Ding on 11/11/21.
//

import UIKit

class EditDateCell: UITableViewCell {
    @IBOutlet var datePicker: UIDatePicker!
    
    func configure(date: Date) {
        datePicker.date = date
    }
}

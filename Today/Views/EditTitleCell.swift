//
//  EditTitleCell.swift
//  Today
//
//  Created by Yuheng Ding on 11/11/21.
//

import UIKit

class EditTitleCell: UITableViewCell {
    @IBOutlet var titleTextField: UITextField!
    
    func configure(title: String) {
        titleTextField.text = title
    }
}

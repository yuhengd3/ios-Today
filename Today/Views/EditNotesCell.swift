//
//  EditNotesCell.swift
//  Today
//
//  Created by Yuheng Ding on 11/11/21.
//

import UIKit

class EditNotesCell: UITableViewCell {
    @IBOutlet var notesTextView: UITextView!
    
    
    func configure(notes: String?) {
        notesTextView.text = notes
    }
}

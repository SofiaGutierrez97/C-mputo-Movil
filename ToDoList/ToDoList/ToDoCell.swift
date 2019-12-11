//
//  ToDoCell.swift
//  ToDoList
//
//  Created by Sofìa Gutièrrez on 12/10/19.
//  Copyright © 2019 unam. All rights reserved.
//

import UIKit

@objc protocol ToDoCellDelegate: class {
    func checkTapped(sender: ToDoCell)
}

class ToDoCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var isCompleteButton: UIButton!
    
    var delegate: ToDoCellDelegate?
    
    @IBAction func completeButtonTapped(){
        delegate?.checkTapped(sender: self)
    }
    

}

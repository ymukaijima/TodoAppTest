//
//  TodoItemCell.swift
//  TodoApp
//
//  Created by yumi on 2020/08/13.
//  Copyright © 2020 Koichiro, Kensuke, Yumi. All rights reserved.
//

import UIKit

class TodoItemCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

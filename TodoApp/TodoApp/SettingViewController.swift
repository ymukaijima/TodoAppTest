//
//  SettingViewController.swift
//  TodoApp
//
//  Created by yumi on 2020/08/16.
//  Copyright © 2020 Koichiro, Kensuke, Yumi. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {
    
    @IBOutlet weak var friendsTextField: UITextView!
    @IBOutlet weak var saveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
        
    }

    private func setUp() {
        friendsTextField.layer.borderWidth = 1
        friendsTextField.layer.borderColor = UIColor.lightGray.cgColor
        friendsTextField.layer.cornerRadius = 3
        
        saveButton.layer.cornerRadius = saveButton.frame.size.height / 5
        
    }
    
}

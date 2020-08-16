//
//  DetailViewController.swift
//  TodoApp
//
//  Created by yumi on 2020/08/16.
//  Copyright © 2020 Koichiro, Kensuke, Yumi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var memoTextView: UITextView!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var historyTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUp()
    }
    
    private func setUp() {
        memoTextView.layer.borderWidth = 1
        memoTextView.layer.borderColor = UIColor.lightGray.cgColor
        memoTextView.layer.cornerRadius = 3
        
        historyTextView.layer.borderWidth = 1
        historyTextView.layer.borderColor = UIColor.lightGray.cgColor
        historyTextView.layer.cornerRadius = 3
        
        saveButton.layer.cornerRadius = saveButton.frame.size.height / 5
        
    }

}

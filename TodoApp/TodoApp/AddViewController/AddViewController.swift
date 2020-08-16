//
//  AddViewController.swift
//  TodoApp
//
//  Created by yumi on 2020/08/13.
//  Copyright © 2020 Koichiro, Kensuke, Yumi. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var memoTextView: UITextView!
    
    @IBOutlet weak var saveButton: UIButton!
    
    @IBOutlet weak var sendButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
        
    }

    private func setUp() {
        memoTextView.layer.borderWidth = 1
        memoTextView.layer.borderColor = UIColor.lightGray.cgColor
        memoTextView.layer.cornerRadius = 3
        
        saveButton.layer.cornerRadius = saveButton.frame.size.height / 5
        sendButton.layer.cornerRadius = sendButton.frame.size.height / 5
        
    }
    
    
    @IBAction func tappedMemoTextView(_ sender: UITapGestureRecognizer) {
        
        let alert = UIAlertController(title: "Add New Memo", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Add Memo", style: .default) { (action) in
            print("Success!")
        }
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Create New Memo"
        }
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func tappedDate(_ sender: UITapGestureRecognizer) {
        
        let alert = UIAlertController(title: "Add New Date", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Add Date", style: .default) { (action) in
            print("Success!")
        }
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Create Date"
        }
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func tappedSendTo(_ sender: UITapGestureRecognizer) {
        
        let alert = UIAlertController(title: "Who do you want to send?", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Add", style: .default) { (action) in
            print("Success!")
        }
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Who?"
        }
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
}

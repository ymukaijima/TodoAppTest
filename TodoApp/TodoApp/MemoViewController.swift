//
//  MemoViewController.swift
//  TodoApp
//
//  Created by yumi on 2020/08/15.
//  Copyright © 2020 Koichiro, Kensuke, Yumi. All rights reserved.
//

import UIKit

class MemoViewController: UIViewController {
    
    @IBOutlet weak var addViewControllerButton: UIButton!
    
    @IBOutlet weak var detailViewController: UIButton!
    
    @IBOutlet weak var settingViewController: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func showAddViewController(_ sender: UIButton) {
        let vc = AddViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func showDetailViewController(_ sender: Any) {
        let vc = DetailViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func showSettingViewController(_ sender: Any) {
        let vc = SettingViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

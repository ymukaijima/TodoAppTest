//
//  ReceivedMessageViewController.swift
//  TodoApp
//
//  Created by yumi on 2020/08/15.
//  Copyright © 2020 Koichiro, Kensuke, Yumi. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class ReceivedMessageViewController: UIViewController, IndicatorInfoProvider {
    
    //ここがボタンのタイトルに利用されます
    var itemInfo: IndicatorInfo = "Received"
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return itemInfo
    }
}


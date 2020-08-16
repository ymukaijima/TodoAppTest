//
//  MessageViewController.swift
//  TodoApp
//
//  Created by yumi on 2020/08/15.
//  Copyright © 2020 Koichiro, Kensuke, Yumi. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class MessageViewController: ButtonBarPagerTabStripViewController {

    override func viewDidLoad() {
        //バーの色
        settings.style.buttonBarBackgroundColor = UIColor(red: 73/255, green: 72/255, blue: 62/255, alpha: 1)
        //ボタンの色
        settings.style.buttonBarItemBackgroundColor = UIColor(red: 73/255, green: 72/255, blue: 62/255, alpha: 1)
        //セルの文字色
        settings.style.buttonBarItemTitleColor = UIColor.white
        //セレクトバーの色
        settings.style.selectedBarBackgroundColor = UIColor(red: 254/255, green: 0, blue: 124/255, alpha: 1)
        
        super.viewDidLoad()
        
        //スクロールできなくする
        self.containerView.isScrollEnabled = false

    }

   override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        //管理されるViewControllerを返す処理
        let sentVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Sent")
        let receivedVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Received")
        let childViewControllers:[UIViewController] = [sentVC, receivedVC]
        return childViewControllers
    }
}

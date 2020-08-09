//
//  ViewController.swift
//  TodoApp
//
//  Created by yumi on 2020/07/28.
//  Copyright © 2020 Koichiro, Kensuke, Yumi. All rights reserved.
//

import UIKit
import Lottie

class WelcomeViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    var todoArray = ["success","voice","checklist"]
    
    var stringArray = [
        "Todolistの管理ができるアプリです",
        "テキストはもちろん、音声でも簡単に登録できます",
        "さあ、はじめましょう！"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.isPagingEnabled = true
        setUpScroll()
        
        for i in 0...2 {
            let animationView = AnimationView()
            let animation = Animation.named(todoArray[i])
            animationView.frame = CGRect(x: CGFloat(i)*view.frame.size.width, y: 0, width: view.frame.size.width, height: view.frame.size.height)
            animationView.animation = animation
            //画像配置をコードで指定
            animationView.contentMode = .scaleAspectFit
            animationView.loopMode = .loop
            animationView.play()
            scrollView.addSubview(animationView)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        self.navigationController?.isNavigationBarHidden = true
    }
    
    func setUpScroll(){
        scrollView?.delegate = self
        scrollView?.contentSize = CGSize(width: view.frame.size.width * CGFloat(todoArray.count), height: scrollView.frame.size.height)
        for i in 0...2{
           let onboardLabel = UILabel(frame: CGRect(x: CGFloat(i)*view.frame.size.width, y: view.frame.size.height/3, width: scrollView.frame.size.width, height: scrollView.frame.size.height))
           onboardLabel.font = UIFont.boldSystemFont(ofSize: 15.0)
           onboardLabel.textAlignment = .center
           onboardLabel.text = stringArray[i]
           scrollView.addSubview(onboardLabel)
            }
    }
}


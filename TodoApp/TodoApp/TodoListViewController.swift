//
//  File.swift
//  TodoApp
//
//  Created by yumi on 2020/08/09.
//  Copyright © 2020 Koichiro, Kensuke, Yumi. All rights reserved.
//

import UIKit
import ChameleonFramework

class TodoListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var itemArray = ["Find Mike", "Buy Eggs", "Destroy Demogorgon", "Go to Supermarket", "Buy Coffee"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let nib = UINib(nibName: "TodoItemCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "TodoItemCell")
        
        setupNavigationBar()
        
        // tableviewを分ける線を消す
        tableView.separatorStyle = .none
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath) as! TodoItemCell
        cell.titleLabel?.text = itemArray[indexPath.row]
        
        // 赤のグラデーションになるように設定
        if let color = FlatWatermelon().darken(byPercentage: CGFloat(indexPath.row) / CGFloat(itemArray.count)) {
            cell.backgroundColor = color
            cell.titleLabel?.textColor = ContrastColorOf(color, returnFlat: true)
        }
        return cell
    }
    
    // navigation barの設定
    // ここなぜかうまく動いていない・・・「＋」ボタンが表示されない
    private func setupNavigationBar() {
        let rightButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(showAddScreen))
        navigationItem.rightBarButtonItem = rightButtonItem
    }
    
    // navigation barのaddボタンをタップされたときの動作
    @objc func showAddScreen() {
        print("「＋」ボタンがクリックされたよ！")
    }
    
    // SwipeしたときにCompleteとDeteteができるようにする
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        // 完了済み(Complete)のアクションを設定する
        // できればTitleもImageと一緒に表示させたいができるのか？
        let completeAction = UIContextualAction(style: .normal  , title: "Complete") {
            (ctxAction, view, completionHandler) in
            print("Completeを実行する")
            completionHandler(true)
        }
        
        // Completeボタンのデザインを設定する
        let completeImage = UIImage(systemName: "checkmark.circle.fill")?.withTintColor(UIColor.white, renderingMode: .alwaysTemplate)
        completeAction.image = completeImage
        completeAction.backgroundColor = UIColor(red: 0/255, green: 125/255, blue: 255/255, alpha: 1)
        
        // 削除のアクションを設定する
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") {
            (ctxAction, view, completionHandler) in
            self.itemArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            completionHandler(true)
        }
        
        // 削除ボタンのデザインを設定する
        let trashImage = UIImage(systemName: "trash.fill")?.withTintColor(UIColor.white , renderingMode: .alwaysTemplate)
        deleteAction.image = trashImage
        deleteAction.backgroundColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1)
        
        // スワイプでの削除を無効化して設定する
        let swipeAction = UISwipeActionsConfiguration(actions:[deleteAction, completeAction])
        swipeAction.performsFirstActionWithFullSwipe = false
        
        return swipeAction
    }
}

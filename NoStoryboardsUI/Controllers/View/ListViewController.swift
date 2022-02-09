//
//  ListViewController.swift
//  NoStoryboardsUI
//
//  Created by Dzhafar on 25.01.2022.
//

import UIKit

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private let myArray = ["Время намаза", "Все новости", "Новости моего города", "Новые аудио", "Новые книги", "Начало и окончание месяца Рамадан", "Начало месяца Хаджа", "О постах в понедельние и четверг", "Другие уведомления", "Открыть в настройках"]
    
    private var myTableView: UITableView!
    
    let cellSpacingHeight: CGFloat = 20
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let displayWidth: CGFloat = self.view.frame.width
        let displayHeight: CGFloat = self.view.frame.height
        title = "Уведомления"
        view.backgroundColor = .systemGray6
        
        myTableView = UITableView(frame: CGRect(x: 0, y: 0, width: displayWidth, height: displayHeight))
        myTableView.backgroundColor = .clear
        myTableView.register(ListTableViewCell.self, forCellReuseIdentifier: "MyCell")
        myTableView.rowHeight = 65
        myTableView.dataSource = self
        myTableView.delegate = self
        self.view.addSubview(myTableView)
        
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
           return cellSpacingHeight
       }
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! ListTableViewCell
       
    
        cell.textLabel!.text = "\(myArray[indexPath.row])"

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

    }
   
    @objc func switchDIdChange(_ sender: UISwitch) {
        print("sender is \(sender.tag)")
    }
    
   
   

    
}


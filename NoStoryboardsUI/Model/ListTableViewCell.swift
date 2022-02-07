//
//  ListTableViewCell.swift
//  NoStoryboardsUI
//
//  Created by Jafar on 07.02.2022.
//
import UIKit

class ListTableViewCell: UITableViewCell {
    
    
    var cellSwitch = UISwitch(frame: .zero)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "myCell")
        
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
        self.layer.borderWidth = 0.1
        self.accessoryView = cellSwitch
        
        addSubview(cellSwitch)
        configureCellSwitch()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    func configureCellSwitch() {
        
        cellSwitch.isOn = true
        cellSwitch.onTintColor = .black
        
        
    }
    
}

//
//  ListViewPresenter.swift
//  NoStoryboardsUI
//
//  Created by Jafar on 08.02.2022.
//

import Foundation

protocol ListViewPresenterProtocol: AnyObject {
    
}

typealias ListViewPresenterDelegate = ListViewPresenterProtocol & ListViewController

class ListViewPresenter {
    weak var delegate: ListViewPresenterDelegate? {
        didSet {
            if delegate != nil {
                
            }
        }
    }
    private func loading() {
        
    }
}

//MARK: - View
extension ListViewPresenter {
    //MARK: - Input
    open func update() {
        
    }
    //MARK: - Output
    private func reloadData() {
        
    }
}

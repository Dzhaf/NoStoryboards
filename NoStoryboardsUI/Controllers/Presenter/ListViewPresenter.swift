//
//  ListViewPresenter.swift
//  NoStoryboardsUI
//
//  Created by Jafar on 08.02.2022.
//

import Foundation

protocol ListViewPresenterProtocol: AnyObject {
    func reloadData(string: String)
}

typealias ListViewPresenterDelegate = ListViewPresenterProtocol & ListViewController

class ListViewPresenter {
    weak var delegate: ListViewPresenterDelegate? 
        
    private func loading(indexPath: IndexPath) {
        self.reloadData(text: "Проверка прошла отлично!" + " No" + String(indexPath.row))
    }
}

//MARK: - View
extension ListViewPresenter {
    //MARK: - Input
    open func update(indexPath: IndexPath) {
        loading(indexPath: indexPath)
    }
    //MARK: - Output
    private func reloadData(text: String) {
        delegate?.reloadData(string: text)
    }
}

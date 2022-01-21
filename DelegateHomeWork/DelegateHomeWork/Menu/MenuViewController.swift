//
//  MenuViewController.swift
//  DelegateHomeWork
//
//  Created by Дмитрий Молодецкий on 21.01.2022.
//

import UIKit

class MenuViewController: UIViewController {

    let menuView = MenuView()
        
    override func loadView() {
        self.view = self.menuView
        self.menuView.delegate = self // инициализирую делегат вью меню значением MenuViewController
    }
    
    weak var delegate: MenuDelegate?
}

extension MenuViewController: MenuDelegate { // конформлю контроллер с протоколом
    func handlerMenu(menuItem: DetailScreenType) {
        self.delegate?.handlerMenu(menuItem: menuItem) // реализую тело функции и вызываю функцию собственного делегата
    }
}


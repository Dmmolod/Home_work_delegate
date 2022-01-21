//
//  AppNavController.swift
//  DelegateHomeWork
//
//  Created by Дмитрий Молодецкий on 21.01.2022.
//

import UIKit

class AppNavController: UINavigationController {
    
    let menuVC = MenuViewController() // Создаю константу с контроллером меню
    
    init() {
        super.init(rootViewController: self.menuVC) // Указываю меню контроллер как главный экран
        self.menuVC.delegate = self // Указываю что делегатом MenuViewControllera является AppNavController
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension AppNavController: MenuDelegate { // Дополняю класс, конформлю его к MenuDelegate
    
    func handlerMenu(menuItem: DetailScreenType) {
        self.present(SecondViewController(color: menuItem.setColor()), animated: true, completion: nil) // Указываю тело функции, в нем я презентую второстепенный контроллер, с передачей цвета, который соответствует цвету DetailScreenType
    }
}

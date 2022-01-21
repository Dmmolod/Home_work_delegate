//
//  SecondViewController.swift
//  DelegateHomeWork
//
//  Created by Дмитрий Молодецкий on 21.01.2022.
//

import UIKit

class SecondViewController: UIViewController {
        
    let secondView: SecondView  // сообщаю что константа имеет типа SecondView, чтобы получить доступ к ее свойствам (а именно к делегату)
        
    init(color: UIColor) {
        self.secondView = SecondView(background: color) // устанавливаю цвет переданный из AppNavControllera (не уверен что это правильное поведение)
        self.secondView.backgroundColor = color
        super.init(nibName: nil, bundle: nil)
        self.modalPresentationStyle = .fullScreen
        
        self.secondView.delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        self.view = self.secondView
    }
}

extension SecondViewController: Closable {
        
    func close() {
        self.dismiss(animated: true)
    }
}



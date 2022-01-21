//
//  MenuView.swift
//  DelegateHomeWork
//
//  Created by Дмитрий Молодецкий on 21.01.2022.
//

import UIKit

class MenuView: UIView {
    
    weak var delegate: MenuDelegate?

    init() {
        super.init(frame: UIScreen.main.bounds)
        
        self.backgroundColor = .systemBlue
        self.setupButtons()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
    func setupButtons() { // Настройка кнопки
        var buttons: [UIButton] {
            var result = [UIButton]()
            [DetailScreenType.firstScreen, // Перечисляю все нужные элементы из DetailScreenType
             DetailScreenType.secondScreen,
             DetailScreenType.thirdScreen,
             DetailScreenType.fourthScreen,
             DetailScreenType.fifthScreen].forEach { detailScreen in
                let button = UIButton(primaryAction: UIAction(handler: { _ in
                    self.delegate?.handlerMenu(menuItem: detailScreen) // Устанавливаю что при нажатии кнопки будет вызвана функция делегата, в которую передам соответствующий элемент DetailScreenType
                }))
                button.backgroundColor = detailScreen.setColor()
                button.setTitle(detailScreen.rawValue.capitalized, for: .normal)
                button.setTitleColor(.black, for: .normal)
                result.append(button)
            }
            return result
        }
        
        let stackView = UIStackView(arrangedSubviews: buttons)
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.axis = .vertical
        stackView.frame = frame.insetBy(dx: 0, dy: 100)
        self.addSubview(stackView)
    }
}

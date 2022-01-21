//
//  SecondView.swift
//  DelegateHomeWork
//
//  Created by Дмитрий Молодецкий on 21.01.2022.
//

import UIKit

class SecondView: UIView {

    weak var delegate: Closable?

    init(background color: UIColor) {
        super.init(frame: UIScreen.main.bounds)
        
        self.backgroundColor = color
        self.setupButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
    func setupButton() {
        let closeButton = UIButton()
        closeButton.setTitle("Close", for: .normal)
        closeButton.setTitleColor(.white, for: .normal)
        closeButton.backgroundColor = .black
        closeButton.layer.cornerRadius = 15
        closeButton.addAction(UIAction(handler: { _ in
            self.delegate?.close()
        }), for: .touchUpInside)
        
        let stackView = UIStackView(arrangedSubviews: [closeButton])
        stackView.distribution = .fillProportionally
        stackView.alignment = .center
        stackView.axis = .horizontal
        stackView.frame = frame.insetBy(dx: 0, dy: 100)
        self.addSubview(stackView)        
    }
}

//
//  DetailScreenType.swift
//  DelegateHomeWork
//
//  Created by Дмитрий Молодецкий on 21.01.2022.
//

import Foundation
import UIKit

enum DetailScreenType: String {
    case firstScreen
    case secondScreen
    case thirdScreen
    case fourthScreen
    case fifthScreen
    
    func setColor() -> UIColor {
        switch self {
        case .firstScreen: return .systemRed
        case .secondScreen: return .systemBrown
        case .thirdScreen: return .systemPink
        case .fourthScreen: return .systemCyan
        case .fifthScreen: return .systemMint
        }
    }
}

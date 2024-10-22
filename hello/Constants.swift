//
//  Constants.swift
//  hello
//
//  Created by Maks Valeev on 22.10.2024.
//

import Foundation
import UIKit

class Constants {
    enum Text {
        static let headerLabelText = "Header"
        static let mainLabelText = "He'll want to use your yacht, and I don't want this thing smelling like fish."
        static let timeLabelText = "8m ago"
    }
    enum Fonts {
        static let UI16SemiBold = UIFont(name: "AlNile-Bold", size: 16)
        static let UI16Regular = UIFont(name: "UI - 14 Regular", size: 14)
    }
    enum Color {
        static var imageViewColor = #colorLiteral(red: 0.9660720229, green: 0.9660720229, blue: 0.9660721421, alpha: 1)
        static var timeLabelColor = #colorLiteral(red: 0.7422972322, green: 0.7422972322, blue: 0.7422972322, alpha: 1)
    }
}

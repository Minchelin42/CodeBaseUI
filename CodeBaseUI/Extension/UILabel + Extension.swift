//
//  UILabel + Extension.swift
//  CodeBaseUI
//
//  Created by 민지은 on 2024/01/29.
//

import UIKit

extension UILabel {
    func contentsLabelStyle(backgroundColor: UIColor, fontColor: UIColor, title: String) {
        self.backgroundColor = backgroundColor
        self.clipsToBounds = true
        self.layer.cornerRadius = 2
        self.text = title
        self.textAlignment = .center
        self.textColor = fontColor
        self.font = .systemFont(ofSize: 12, weight: .bold)
        
    }
}

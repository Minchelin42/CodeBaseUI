//
//  UIImageView + Extension.swift
//  CodeBaseUI
//
//  Created by 민지은 on 2024/01/29.
//

import UIKit

extension UIImageView {
    func subImageStyle(image: String) {
        self.image = UIImage(named: image)
        self.clipsToBounds = true
        self.layer.cornerRadius = 5
    }
}

//
//  UINavigationController + Extension.swift
//  CodeBaseUI
//
//  Created by 민지은 on 2024/01/29.
//

import UIKit

extension UINavigationController {
    func setNavigationTitle(title: String) {
        self.navigationBar.topItem?.title = title
        self.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
    }
}

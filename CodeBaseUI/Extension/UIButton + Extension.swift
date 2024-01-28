//
//  UIButton + Extension.swift
//  CodeBaseUI
//
//  Created by 민지은 on 2024/01/29.
//

import UIKit

extension UIButton {
    func playStyle() {
        self.backgroundColor = .white
        self.layer.cornerRadius = 5
        self.setTitle("  재생", for: .normal)
        self.titleLabel?.font = .boldSystemFont(ofSize: 15)
        self.setTitleColor(.black, for: .normal)
        self.setImage(UIImage(systemName: "play.fill"), for: .normal)
        self.tintColor = .black
    }
    
    func plusStyle() {
        self.backgroundColor = .gray
        self.layer.cornerRadius = 5
        self.setTitle("  내가 찜한 리스트", for: .normal)
        self.titleLabel?.font = .boldSystemFont(ofSize: 15)
        self.setTitleColor(.white, for: .normal)
        self.setImage(UIImage(systemName: "plus"), for: .normal)
        self.tintColor = .white
    }
    
    func mainImageButtonStyle(backgroundColor: UIColor, fontColor: UIColor, title: String, systemName: String) {
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = 5
        self.setTitle(title, for: .normal)
        self.titleLabel?.font = .boldSystemFont(ofSize: 15)
        self.setTitleColor(fontColor, for: .normal)
        self.setImage(UIImage(systemName: systemName), for: .normal)
        self.tintColor = fontColor
    }
    
    func listButtonStyle(title: String, fontColor: UIColor, backgroundColor: UIColor) {
        self.setTitle(title, for: .normal)
        self.setTitleColor(fontColor, for: .normal)
        self.titleLabel?.font = .boldSystemFont(ofSize: 15)
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = 5
    }
}

extension UIButton.Configuration {
    static func searchButtonStyle(title: String, image: String, backgroundColor: UIColor, fontColor: UIColor) -> UIButton.Configuration {
        var config = UIButton.Configuration.filled()
        var titleAttr = AttributedString.init(title)
            titleAttr.font = .systemFont(ofSize: 12.5, weight: .medium)
            config.attributedTitle = titleAttr
        config.titleAlignment = .center
        
        config.image = UIImage(named: image)
        config.imagePlacement = .leading
        config.imagePadding = 8
        config.cornerStyle = .capsule
        
        config.baseBackgroundColor = backgroundColor
        config.baseForegroundColor = fontColor
        
        return config
    }
}

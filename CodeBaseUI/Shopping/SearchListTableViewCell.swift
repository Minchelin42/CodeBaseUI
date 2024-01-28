//
//  SearchListTableViewCell.swift
//  CodeBaseUI
//
//  Created by 민지은 on 2024/01/28.
//

import UIKit
import SnapKit

class SearchListTableViewCell: UITableViewCell {
    
    let circleView = UIView()
    let image = UIImageView()
    let productLabel = UILabel()
    let deleteButton = UIButton()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor = .black
        
        configureHierarchy()
        setupConstraints()
        configureCell()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureHierarchy() {
        contentView.addSubview(circleView)
        circleView.addSubview(image)
        contentView.addSubview(productLabel)
        contentView.addSubview(deleteButton)
    }
    
    func setupConstraints() {
        circleView.snp.makeConstraints { make in
            make.size.equalTo(35)
            
            make.leading.equalTo(8)
            make.centerY.equalToSuperview()
        }
        
        image.snp.makeConstraints { make in
            make.size.equalTo(20)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        
        productLabel.snp.makeConstraints { make in
            make.leading.equalTo(circleView.snp.trailing).offset(15)
            make.trailing.greaterThanOrEqualTo(10)
            make.centerY.equalToSuperview()
        }
        
        deleteButton.snp.makeConstraints { make in
            make.size.equalTo(35)
            make.centerY.equalToSuperview()
            make.trailing.equalTo(8)
        }
    }
    
    func configureCell() {
        circleView.backgroundColor = .clear
        DispatchQueue.main.async {
            self.circleView.clipsToBounds = true
            self.circleView.layer.cornerRadius = self.circleView.frame.width / 2
        }
        circleView.layer.borderWidth = 1
        circleView.layer.borderColor = UIColor.gray.cgColor
        
        image.image = UIImage(systemName: "magnifyingglass")
        image.tintColor = .white
        image.backgroundColor = .clear
        
        productLabel.font = .systemFont(ofSize: 14, weight: .medium)
        productLabel.textColor = .white
        productLabel.backgroundColor = .clear
        
        deleteButton.setImage(UIImage(systemName: "xmark"), for: .normal)
        deleteButton.tintColor = .gray
        deleteButton.backgroundColor = .clear
        
    }

}

#Preview {
    ShoppingSearchViewController()
}

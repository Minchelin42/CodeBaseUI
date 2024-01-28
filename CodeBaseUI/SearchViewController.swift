//
//  SearchViewController.swift
//  CodeBaseUI
//
//  Created by 민지은 on 2024/01/28.
//

import UIKit
import SnapKit

class SearchViewController: UIViewController {
    
    let searchBar = UISearchBar()
    
    let buttonView = UIView()
    
    let firstButton = UIButton()
    let secondButton = UIButton()
    let thirdButton = UIButton()
    
    let resultView = UIView()
    
    let titleLabel = UILabel()
    let subLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black
        
        configureHierarchy()
        setupConstraints()
        configureView()

    }
    
    func configureHierarchy() {
        view.addSubview(searchBar)
        view.addSubview(buttonView)
        view.addSubview(resultView)
        buttonView.addSubview(firstButton)
        buttonView.addSubview(secondButton)
        buttonView.addSubview(thirdButton)
        resultView.addSubview(titleLabel)
        resultView.addSubview(subLabel)
    }
    
    func setupConstraints() {
        searchBar.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide)
            
        }
        
        buttonView.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.height.equalTo(50)
            
            make.top.equalTo(searchBar.snp.bottom)
            make.horizontalEdges.equalToSuperview()
        }
        
        firstButton.snp.makeConstraints { make in
            make.width.equalTo(105)
            make.height.equalTo(40)
            
            make.leading.equalToSuperview()
            make.centerY.equalToSuperview()
        }
            
        secondButton.snp.makeConstraints { make in
            make.width.equalTo(155)
            make.height.equalTo(40)
            
            make.leading.equalTo(firstButton.snp.trailing)
            make.centerY.equalToSuperview()
        }
        
        thirdButton.snp.makeConstraints { make in
            make.height.equalTo(40)
            
            make.leading.equalTo(secondButton.snp.trailing)
            make.trailing.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        
        resultView.snp.makeConstraints { make in
            make.width.equalToSuperview()
            
            make.top.equalTo(buttonView.snp.bottom)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }
    
        titleLabel.snp.makeConstraints { make in
            make.width.equalToSuperview()
            
            make.top.equalTo(240)
        }
    
        subLabel.snp.makeConstraints { make in
            make.width.equalToSuperview()
            
            make.top.equalTo(titleLabel.snp.bottom).offset(10)
        }
    }
    
    func configureView() {
        searchBar.barTintColor = .black
        searchBar.searchTextField.backgroundColor = .darkGray
        searchBar.placeholder = "게임, 시리즈, 영화를 검색하세요"
        
        buttonView.backgroundColor = .black
        
        var config = UIButton.Configuration.filled()
        var titleAttr = AttributedString.init("공개 예정")
            titleAttr.font = .systemFont(ofSize: 12.5, weight: .medium)
            config.attributedTitle = titleAttr
        config.titleAlignment = .center
        
        config.image = UIImage(named:"blue")
        config.imagePlacement = .leading
        config.imagePadding = 8
        config.cornerStyle = .capsule
        
        config.baseBackgroundColor = .white
        config.baseForegroundColor = .black
        
        firstButton.configuration = config
        
        var config2 = UIButton.Configuration.filled()
        
        var titleAttr2 = AttributedString.init("모두의 인기 콘텐츠")
            titleAttr2.font = .systemFont(ofSize: 12.5, weight: .medium)
            config2.attributedTitle = titleAttr2
        
        config2.titleAlignment = .center
        
        config2.image = UIImage(named:"turquoise")
        config2.imagePlacement = .leading
        config2.imagePadding = 8
        config2.cornerStyle = .capsule
        
        config2.baseBackgroundColor = .black
        config2.baseForegroundColor = .white
        
        secondButton.configuration = config2
        
        var config3 = UIButton.Configuration.filled()
        
        var titleAttr3 = AttributedString.init("TOP 10시리즈")
            titleAttr3.font = .systemFont(ofSize: 12.5, weight: .medium)
            config3.attributedTitle = titleAttr3
        
        config3.titleAlignment = .center
        
        config3.image = UIImage(named:"pink")
        config3.imagePlacement = .leading
        config3.imagePadding = 8
        config3.cornerStyle = .capsule
        
        config3.baseBackgroundColor = .black
        config3.baseForegroundColor = .white
        
        thirdButton.configuration = config3
        
        resultView.backgroundColor = .black
        
        titleLabel.text = "이런! 찾으시는 작품이 없습니다."
        titleLabel.textAlignment = .center
        titleLabel.textColor = .white
        titleLabel.font = .boldSystemFont(ofSize: 20)
        
        subLabel.text = "다른 영화, 시리즈, 배우, 감독 또는 장르를 검색해보세요"
        subLabel.textAlignment = .center
        subLabel.textColor = .lightGray
        subLabel.font = .boldSystemFont(ofSize: 15)
    }

}

#Preview {
    SearchViewController()
}

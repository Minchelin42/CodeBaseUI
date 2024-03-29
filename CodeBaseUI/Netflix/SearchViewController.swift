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
        
        firstButton.configuration = UIButton.Configuration.searchButtonStyle(
            title: "공개 예정",
            image: "blue",
            backgroundColor: .white,
            fontColor: .black)
        
        secondButton.configuration = UIButton.Configuration.searchButtonStyle(
            title: "모두의 인기 콘텐츠",
            image: "turquoise",
            backgroundColor: .black,
            fontColor: .white)
        
        thirdButton.configuration = UIButton.Configuration.searchButtonStyle(
            title: "TOP10 시리즈",
            image: "pink",
            backgroundColor: .black,
            fontColor: .white)

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

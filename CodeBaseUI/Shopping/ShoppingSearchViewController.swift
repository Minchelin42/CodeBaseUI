//
//  ShoppingSearchViewController.swift
//  CodeBaseUI
//
//  Created by 민지은 on 2024/01/28.
//

import UIKit
import SnapKit

class ShoppingSearchViewController: UIViewController {
    
    let list = ["맥북 거치대", "레오폴드 저소움 적축", "나이키 러닝화", "아이폰 15 256", "뉴발란스", "카드지갑"]

    let searchBar = UISearchBar()
    let topView = UIView()
    let searchLabel = UILabel()
    let clearButton = UIButton()
    
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black
        
        configureHierarchy()
        setupConstraints()
        configureView()
    }
    
    func configureHierarchy() {
        view.addSubview(searchBar)
        view.addSubview(topView)
        topView.addSubview(searchLabel)
        topView.addSubview(clearButton)
        view.addSubview(tableView)
    }
    
    func setupConstraints() {
        searchBar.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide)
        }
        
        topView.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.height.equalTo(40)
            
            make.top.equalTo(searchBar.snp.bottom)
        }

        searchLabel.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.centerY.equalToSuperview()
            make.leading.equalTo(10)
        }

        clearButton.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.centerY.equalToSuperview()
            
            make.trailing.equalTo(10)
        }

        tableView.snp.makeConstraints { make in
            make.top.equalTo(topView.snp.bottom)
            make.horizontalEdges.bottom.equalToSuperview()
        }
    }
    
    func configureView() {
        searchBar.barTintColor = .black
        searchBar.searchTextField.backgroundColor = .darkGray
        searchBar.placeholder = "브랜드, 상품, 프로필, 태그 등"
        
        topView.backgroundColor = .black
        
        searchLabel.text = "최근 검색"
        searchLabel.font = .boldSystemFont(ofSize: 15)
        searchLabel.textColor = .white
        
        clearButton.setTitle("모두 지우기", for: .normal)
        clearButton.titleLabel?.font = .boldSystemFont(ofSize: 15)
        clearButton.setTitleColor(UIColor(named: "shoppingGreen"), for: .normal)
        
        tableView.backgroundColor = .black
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(SearchListTableViewCell.self, forCellReuseIdentifier: "SearchListTableViewCell")
    }

}

extension ShoppingSearchViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchListTableViewCell", for: indexPath) as! SearchListTableViewCell
        cell.productLabel.text = list[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    
}

#Preview {
    ShoppingSearchViewController()
}

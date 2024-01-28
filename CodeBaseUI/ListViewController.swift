//
//  ListViewController.swift
//  CodeBaseUI
//
//  Created by 민지은 on 2024/01/28.
//

import UIKit

class ListViewController: UIViewController {

    let titleLabel = UILabel()
    let subtitleLabel = UILabel()
    
    let image = UIImageView()
    
    let settingButton = UIButton()
    let searchButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        view.addSubview(titleLabel)
        view.addSubview(subtitleLabel)
        view.addSubview(image)
        view.addSubview(settingButton)
        view.addSubview(searchButton)
        
        titleLabel.text = "'나만의 자동 저장' 기능 "
        titleLabel.font = .boldSystemFont(ofSize: 20)
        titleLabel.textColor = .white
        titleLabel.textAlignment = .center
        
        titleLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(200)
        }
        
        subtitleLabel.text = """
        취향에 맞는 영화와 시리즈를 자동으로 저장해 드립니다.
        디바이스에 언제나 시청할 콘텐츠가 준비되니 지루할 틈이
        없어요.
        """
        subtitleLabel.font = .systemFont(ofSize: 13, weight: .medium)
        subtitleLabel.textColor = .gray
        subtitleLabel.textAlignment = .center
        subtitleLabel.numberOfLines = 0
        
        subtitleLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(titleLabel.snp.bottom).offset(10)
        }
        
        image.image = UIImage(named: "dummy")
        
        image.snp.makeConstraints { make in
            make.width.equalTo(420)
            make.height.equalTo(280)
            make.centerX.equalToSuperview()
            make.top.equalTo(subtitleLabel.snp.bottom).offset(20)
        }
        
        settingButton.setTitle("설정하기", for: .normal)
        settingButton.setTitleColor(.white, for: .normal)
        settingButton.titleLabel?.font = .boldSystemFont(ofSize: 15)
        settingButton.backgroundColor = UIColor(named: "buttonBlue")
        settingButton.layer.cornerRadius = 5
        
        settingButton.snp.makeConstraints { make in
            make.width.equalTo(UIScreen.main.bounds.size.width - 100)
            make.height.equalTo(35)
            
            make.centerX.equalToSuperview()
            make.top.equalTo(image.snp.bottom).offset(70)
        }
        
        searchButton.setTitle("저장 가능한 콘텐츠 살펴보기", for: .normal)
        searchButton.titleLabel?.font = .boldSystemFont(ofSize: 15)
        searchButton.setTitleColor(.black, for: .normal)
        searchButton.backgroundColor = .white
        searchButton.layer.cornerRadius = 5
        
        searchButton.snp.makeConstraints { make in
            make.width.equalTo(UIScreen.main.bounds.size.width - 150)
            make.height.equalTo(35)
            
            make.centerX.equalToSuperview()
            make.top.equalTo(settingButton.snp.bottom).offset(10)
        }
        
        
        

    }

}

#Preview {
    ListViewController()
}

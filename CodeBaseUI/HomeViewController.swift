//
//  HomeViewController.swift
//  CodeBaseUI
//
//  Created by 민지은 on 2024/01/28.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {
    
    let mainImage = UIImageView()
    let tagLabel = UILabel()
    let playButton = UIButton()
    let plusButton = UIButton()
    
    let subMenuLabel = UILabel()
    
    let firstImage = UIImageView()
    let secondImage = UIImageView()
    let thirdImage = UIImageView()
    
    let newEpLabel = UILabel()
    let nowPlayLabel = UILabel()
    
    let newSeriesLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
 
        configureHierarchy()
        setupConstraints()
        configureView()
 
    }
    
    func configureHierarchy() {
        view.addSubview(mainImage)
        mainImage.addSubview(tagLabel)
        mainImage.addSubview(plusButton)
        mainImage.addSubview(playButton)
        view.addSubview(subMenuLabel)
        view.addSubview(firstImage)
        view.addSubview(secondImage)
        view.addSubview(thirdImage)
        secondImage.addSubview(newEpLabel)
        secondImage.addSubview(nowPlayLabel)
        thirdImage.addSubview(newSeriesLabel)
    }
    
    func setupConstraints() {
        mainImage.snp.makeConstraints { make in
            make.width.equalTo(UIScreen.main.bounds.size.width - 30)
            make.height.equalTo((UIScreen.main.bounds.size.width - 30) * 1.2)
            make.centerX.equalTo(view)
            make.top.equalTo(view.safeAreaLayoutGuide)
        }

        tagLabel.snp.makeConstraints { make in
            make.top.equalTo(350)
            make.centerX.equalTo(mainImage)
        }
    
        playButton.snp.makeConstraints { make in
            
            make.width.equalTo((UIScreen.main.bounds.size.width - 75) / 2)
            make.height.equalTo(40)
            
            make.top.equalTo(tagLabel.snp.bottom).offset(10)
            make.leading.equalTo(15)
        }

        plusButton.snp.makeConstraints { make in
            
            make.width.equalTo((UIScreen.main.bounds.size.width - 75) / 2)
            make.height.equalTo(40)
            
            make.top.equalTo(tagLabel.snp.bottom).offset(10)
            make.trailing.equalTo(-15)
        }
        
        subMenuLabel.snp.makeConstraints { make in
            make.top.equalTo(mainImage.snp.bottom)
            make.leading.equalTo(15)
        }

        firstImage.snp.makeConstraints { make in
            make.width.equalTo((UIScreen.main.bounds.size.width - 40) / 3)
            make.height.equalTo(200)
            
            make.leading.equalTo(10)
            make.top.equalTo(subMenuLabel.snp.bottom).offset(15)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }

        secondImage.snp.makeConstraints { make in
            make.width.equalTo((UIScreen.main.bounds.size.width - 40) / 3)
            
            make.centerX.equalTo(view)
            make.top.equalTo(firstImage)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }

        thirdImage.snp.makeConstraints { make in
            make.width.equalTo((UIScreen.main.bounds.size.width - 40) / 3)
            
            make.trailing.equalTo(-10)
            make.top.equalTo(firstImage)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }

        newEpLabel.snp.makeConstraints { make in
            make.width.equalTo(90)
            make.height.equalTo(20)
            
            make.centerX.equalToSuperview()
            make.top.equalTo(145)
        }

        nowPlayLabel.snp.makeConstraints { make in
            make.width.equalTo(90)
            make.height.equalTo(20)
            
            make.centerX.equalToSuperview()
            make.top.equalTo(newEpLabel.snp.bottom)
        }

        newSeriesLabel.snp.makeConstraints { make in
            make.width.equalTo(90)
            make.height.equalTo(20)
            
            make.centerX.equalToSuperview()
            make.top.equalTo(165)
        }
    }
    
    func configureView() {
        mainImage.image = UIImage(named: "노량")
        mainImage.clipsToBounds = true
        mainImage.layer.cornerRadius = 10
        
        tagLabel.text = "응원하고픈  ∙  흥미진진  ∙  사극  ∙  전투  ∙  한국 작품"
        tagLabel.textColor = .white
        tagLabel.font = .systemFont(ofSize: 12, weight: .semibold)
        
        playButton.backgroundColor = .white
        playButton.layer.cornerRadius = 5
        playButton.setTitle("  재생", for: .normal)
        playButton.titleLabel?.font = .boldSystemFont(ofSize: 15)
        playButton.setTitleColor(.black, for: .normal)
        playButton.setImage(UIImage(systemName: "play.fill"), for: .normal)
        playButton.tintColor = .black
        
        plusButton.backgroundColor = .gray
        plusButton.layer.cornerRadius = 5
        plusButton.setTitle("  내가 찜한 리스트", for: .normal)
        plusButton.titleLabel?.font = .boldSystemFont(ofSize: 15)
        plusButton.setTitleColor(.white, for: .normal)
        plusButton.setImage(UIImage(systemName: "plus"), for: .normal)
        plusButton.tintColor = .white
        
        subMenuLabel.text = "지금 뜨는 콘텐츠"
        subMenuLabel.textColor = .white
        subMenuLabel.font = .systemFont(ofSize: 16, weight: .semibold)
        
        firstImage.image = UIImage(named: "서울의봄")
        firstImage.clipsToBounds = true
        firstImage.layer.cornerRadius = 5
        
        secondImage.image = UIImage(named: "스즈메의문단속")
        secondImage.clipsToBounds = true
        secondImage.layer.cornerRadius = 5
        
        thirdImage.image = UIImage(named: "더퍼스트슬램덩크")
        thirdImage.clipsToBounds = true
        thirdImage.layer.cornerRadius = 5
        
        newEpLabel.backgroundColor = .red
        newEpLabel.clipsToBounds = true
        newEpLabel.layer.cornerRadius = 2
        newEpLabel.text = "새로운 에피소드"
        newEpLabel.textAlignment = .center
        newEpLabel.textColor = .white
        newEpLabel.font = .systemFont(ofSize: 12, weight: .bold)
        
        nowPlayLabel.backgroundColor = .white
        nowPlayLabel.clipsToBounds = true
        nowPlayLabel.layer.cornerRadius = 2
        nowPlayLabel.text = "지금 시청하기"
        nowPlayLabel.textAlignment = .center
        nowPlayLabel.textColor = .black
        nowPlayLabel.font = .systemFont(ofSize: 12, weight: .bold)
        
        newSeriesLabel.backgroundColor = .red
        newSeriesLabel.clipsToBounds = true
        newSeriesLabel.layer.cornerRadius = 2
        newSeriesLabel.text = "새로운 시리즈"
        newSeriesLabel.textAlignment = .center
        newSeriesLabel.textColor = .white
        newSeriesLabel.font = .systemFont(ofSize: 12, weight: .bold)

    }

}

#Preview {
    HomeViewController()
}

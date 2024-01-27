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
        
        view.addSubview(mainImage)
        
        mainImage.image = UIImage(named: "노량")
        mainImage.clipsToBounds = true
        mainImage.layer.cornerRadius = 10
        
        mainImage.snp.makeConstraints { make in
            make.width.equalTo(UIScreen.main.bounds.size.width - 30)
            make.height.equalTo((UIScreen.main.bounds.size.width - 30) * 1.35)
            make.centerX.equalTo(view)
            make.top.equalTo(view.safeAreaLayoutGuide)
        }
        
        mainImage.addSubview(tagLabel)
        tagLabel.text = "응원하고픈  ∙  흥미진진  ∙  사극  ∙  전투  ∙  한국 작품"
        tagLabel.textColor = .white
        tagLabel.font = .systemFont(ofSize: 12, weight: .semibold)
        
        tagLabel.snp.makeConstraints { make in
            make.top.equalTo(400)
            make.centerX.equalTo(mainImage)
        }
        
        mainImage.addSubview(playButton)
        playButton.backgroundColor = .white
        playButton.layer.cornerRadius = 5
        playButton.setTitle("  재생", for: .normal)
        playButton.titleLabel?.font = .boldSystemFont(ofSize: 15)
        playButton.setTitleColor(.black, for: .normal)
        playButton.setImage(UIImage(systemName: "play.fill"), for: .normal)
        playButton.tintColor = .black
        
        playButton.snp.makeConstraints { make in
            
            make.width.equalTo((UIScreen.main.bounds.size.width - 75) / 2)
            make.height.equalTo(40)
            
            make.top.equalTo(425)
            make.leading.equalTo(15)
        }
        
        mainImage.addSubview(plusButton)
        plusButton.backgroundColor = .gray
        plusButton.layer.cornerRadius = 5
        plusButton.setTitle("  내가 찜한 리스트", for: .normal)
        plusButton.titleLabel?.font = .boldSystemFont(ofSize: 15)
        plusButton.setTitleColor(.white, for: .normal)
        plusButton.setImage(UIImage(systemName: "plus"), for: .normal)
        plusButton.tintColor = .white
        
        plusButton.snp.makeConstraints { make in
            
            make.width.equalTo((UIScreen.main.bounds.size.width - 75) / 2)
            make.height.equalTo(40)
            
            make.top.equalTo(425)
            make.trailing.equalTo(-15)
        }
        
        view.addSubview(subMenuLabel)
        subMenuLabel.text = "지금 뜨는 콘텐츠"
        subMenuLabel.textColor = .white
        subMenuLabel.font = .systemFont(ofSize: 16, weight: .semibold)
        
        subMenuLabel.snp.makeConstraints { make in
            make.top.equalTo(565)
            make.leading.equalTo(15)
        }
        
        view.addSubview(firstImage)
        view.addSubview(secondImage)
        view.addSubview(thirdImage)
        
        
        firstImage.image = UIImage(named: "서울의봄")
        firstImage.clipsToBounds = true
        firstImage.layer.cornerRadius = 5
        
        firstImage.snp.makeConstraints { make in
            make.width.equalTo((UIScreen.main.bounds.size.width - 40) / 3)
            make.height.equalTo(200)
            
            make.leading.equalTo(10)
            make.top.equalTo(600)
        }
        
        secondImage.image = UIImage(named: "스즈메의문단속")
        secondImage.clipsToBounds = true
        secondImage.layer.cornerRadius = 5
        
        secondImage.snp.makeConstraints { make in
            make.width.equalTo((UIScreen.main.bounds.size.width - 40) / 3)
            make.height.equalTo(200)
            
            make.centerX.equalTo(view)
            make.top.equalTo(600)
        }
        
        thirdImage.image = UIImage(named: "더퍼스트슬램덩크")
        thirdImage.clipsToBounds = true
        thirdImage.layer.cornerRadius = 5
        
        thirdImage.snp.makeConstraints { make in
            make.width.equalTo((UIScreen.main.bounds.size.width - 40) / 3)
            make.height.equalTo(200)
            
            make.trailing.equalTo(-10)
            make.top.equalTo(600)
        }
        
        secondImage.addSubview(newEpLabel)
        secondImage.addSubview(nowPlayLabel)
        
        newEpLabel.backgroundColor = .red
        newEpLabel.clipsToBounds = true
        newEpLabel.layer.cornerRadius = 2
        newEpLabel.text = "새로운 에피소드"
        newEpLabel.textAlignment = .center
        newEpLabel.textColor = .white
        newEpLabel.font = .systemFont(ofSize: 12, weight: .bold)
        
        newEpLabel.snp.makeConstraints { make in
            make.width.equalTo(90)
            make.height.equalTo(20)
            
            make.centerX.equalToSuperview()
            make.top.equalTo(145)
        }
        
        nowPlayLabel.backgroundColor = .white
        nowPlayLabel.clipsToBounds = true
        nowPlayLabel.layer.cornerRadius = 2
        nowPlayLabel.text = "지금 시청하기"
        nowPlayLabel.textAlignment = .center
        nowPlayLabel.textColor = .black
        nowPlayLabel.font = .systemFont(ofSize: 12, weight: .bold)
        
        nowPlayLabel.snp.makeConstraints { make in
            make.width.equalTo(90)
            make.height.equalTo(20)
            
            make.centerX.equalToSuperview()
            make.top.equalTo(newEpLabel.snp.bottom)
        }
        
        thirdImage.addSubview(newSeriesLabel)
        
        newSeriesLabel.backgroundColor = .red
        newSeriesLabel.clipsToBounds = true
        newSeriesLabel.layer.cornerRadius = 2
        newSeriesLabel.text = "새로운 시리즈"
        newSeriesLabel.textAlignment = .center
        newSeriesLabel.textColor = .white
        newSeriesLabel.font = .systemFont(ofSize: 12, weight: .bold)
        
        newSeriesLabel.snp.makeConstraints { make in
            make.width.equalTo(90)
            make.height.equalTo(20)
            
            make.centerX.equalToSuperview()
            make.top.equalTo(165)
        }
        
 
    }

}

#Preview {
    HomeViewController()
}

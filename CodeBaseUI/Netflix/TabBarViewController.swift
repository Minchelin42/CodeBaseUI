//
//  TabBarViewController.swift
//  CodeBaseUI
//
//  Created by 민지은 on 2024/01/28.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let homeVC = HomeViewController()
        let searchVC = SearchViewController()
        let listVC = ListViewController()
        
        tabBar.tintColor = .white
        
        homeVC.title = "홈"
        searchVC.title = "NEW & HOT"
        listVC.title = "저장한 콘텐츠 목록"
        
        homeVC.tabBarItem.image = UIImage(systemName: "house")
        searchVC.tabBarItem.image = UIImage(systemName: "play.rectangle.on.rectangle")
        listVC.tabBarItem.image = UIImage(systemName: "arrow.down.circle")
        
        homeVC.navigationItem.largeTitleDisplayMode = .always
        searchVC.navigationItem.largeTitleDisplayMode = .always
        listVC.navigationItem.largeTitleDisplayMode = .always
        
        let navigationHome = UINavigationController(rootViewController: homeVC)
        let navigationSearch = UINavigationController(rootViewController: searchVC)
        let navigationList = UINavigationController(rootViewController: listVC)

        navigationHome.setNavigationTitle(title: "고래밥님")
        navigationSearch.setNavigationTitle(title: "NEW & HOT 검색")
        navigationList.setNavigationTitle(title: "저장한 콘텐츠 목록")
        
        setViewControllers([navigationHome, navigationSearch, navigationList], animated: true)
    }

}

#Preview {
    TabBarViewController()
}

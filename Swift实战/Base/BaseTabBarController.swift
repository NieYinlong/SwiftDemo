//
//  BaseTabBarController.swift
//  Swift实战
//
//  Created by nyl on 2018/10/29.
//  Copyright © 2018年 nieyinlong. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpChildController(HomeVC(), "主页", "", "")
        setUpChildController(FindVC(), "发现", "", "")
        setUpChildController(MineVC(), "我的", "", "")
        
        self.tabBar.tintColor = UIColor.purple
    }
    
    
    private func setUpChildController(_ controller: UIViewController, _ title: String, _ normalImg: String, _ selectedImg: String) {
        controller.tabBarItem.title = title
        controller.tabBarItem.image = UIImage(named: normalImg)
        controller.tabBarItem.selectedImage = UIImage(named: normalImg)
        controller.title = title
        
        let naVC = BaseNavigationController(rootViewController: controller)
        self.addChildViewController(naVC)
    }
}

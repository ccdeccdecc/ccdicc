//
//  CCTabBarViewController.swift
//  CCWeiBo
//
//  Created by apple on 15/10/26.
//  Copyright © 2015年 eason. All rights reserved.
//

import UIKit

class CCTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
       let homeVc = UITableViewController()
        homeVc.title = "首页"
        homeVc.tabBarItem.image = UIImage(named: "tabbar_home")
        addChildViewController(UINavigationController(rootViewController: homeVc))
        
    }

   

}

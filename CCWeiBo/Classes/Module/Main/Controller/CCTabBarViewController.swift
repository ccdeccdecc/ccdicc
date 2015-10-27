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
        let newTabBar = CCMainTabBar()
        setValue(newTabBar, forKey: "tabBar")
        
        tabBar.tintColor = UIColor.orangeColor()
        //首页
        let homeVc = CCHomeTableViewController()
        self.addChildViewController(homeVc, title: "首页", normalImageName: "tabbar_home")
        
        //消息
        let messageVc = CCMessageTableViewController()
        self.addChildViewController(messageVc, title: "消息", normalImageName: "tabbar_message_center")
        //发现
        let discoverVc = CCDiscoverTableViewController()
        self.addChildViewController(discoverVc, title: "发现", normalImageName: "tabbar_discover")
        //我
        let profileVc = CCProfileTableViewController()
        self.addChildViewController(profileVc, title: "我", normalImageName: "tabbar_profile")
        
        
        
    }
    /**
     添加子控制器
     
     - parameter Controller:      控制器
     - parameter title:           标题
     - parameter normalImageName: 图片
     */
   private func addChildViewController(Controller: UIViewController, title: String, normalImageName: String)  {
        Controller.title = title
        Controller.tabBarItem.image = UIImage(named: normalImageName)
        addChildViewController(UINavigationController(rootViewController: Controller))
        
    }
   

}

//
//  CCTabBarViewController.swift
//  CCWeiBo
//
//  Created by apple on 15/10/26.
//  Copyright © 2015年 eason. All rights reserved.
//

import UIKit

class CCTabBarViewController: UITabBarController {

    func composeButtonClick() {
        print(__FUNCTION__)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let newTabBar = CCMainTabBar()
//        setValue(newTabBar, forKey: "tabBar")
        
        tabBar.tintColor = UIColor.orangeColor()
        //首页
        let homeVc = CCHomeTableViewController()
        self.addChildViewController(homeVc, title: "首页", normalImageName: "tabbar_home")
        
        //消息
        let messageVc = CCMessageTableViewController()
        self.addChildViewController(messageVc, title: "消息", normalImageName: "tabbar_message_center")
        
        let controller = UIViewController()
        self.addChildViewController(controller, title: "", normalImageName: "fsd")
        //发现
        let discoverVc = CCDiscoverTableViewController()
        self.addChildViewController(discoverVc, title: "发现", normalImageName: "tabbar_discover")
        //我
        let profileVc = CCProfileTableViewController()
        self.addChildViewController(profileVc, title: "我", normalImageName: "tabbar_profile")
        
        
    }
    
   override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    
    let width = tabBar.bounds.width / CGFloat(5)
    composeButton.frame = CGRect(x: width * 2, y: 0, width: width, height: tabBar.bounds.height)
    tabBar.addSubview(composeButton)
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
    //MARK: -懒加载
    ///撰写按钮
    lazy var composeButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "tabbar_compose_icon_add"), forState: UIControlState.Normal)
        button.setImage(UIImage(named: "tabbar_compose_icon_add_highlighted"), forState: UIControlState.Highlighted)
        button.setBackgroundImage(UIImage(named: "tabbar_compose_button"), forState: UIControlState.Normal)
        button.setBackgroundImage(UIImage(named: "tabbar_compose_button_highlighted"), forState: UIControlState.Highlighted)
       button.addTarget(self, action: "composeButtonClick", forControlEvents: UIControlEvents.TouchUpInside)
        return button
    }()

}

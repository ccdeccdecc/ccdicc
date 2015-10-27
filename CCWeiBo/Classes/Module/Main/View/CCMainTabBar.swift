//
//  CCMainTabBar.swift
//  CCWeiBo
//
//  Created by apple on 15/10/27.
//  Copyright © 2015年 eason. All rights reserved.
//

import UIKit

class CCMainTabBar: UITabBar {

    private let count: CGFloat = 5

    override func layoutSubviews() {
        super.layoutSubviews()
        
        //计算宽度
        let width = bounds.width / count
        
        //frame
        let frame = CGRect(x: 0, y: 0, width: width, height: bounds.height)
        var index = 0
        for view in subviews {
            if view is UIControl && !(view is UIButton) {
                view.frame = CGRectOffset(frame, width * CGFloat(index), 0)
                index += index == 1 ? 2 : 1
                
            }
        }
        //设置"加号"按钮
        composeButton.frame = CGRectOffset(frame, width * 2, 0)
    }
    
    //MARK: -懒加载
    lazy var composeButton: UIButton = {
    let button = UIButton()
        button.setImage(UIImage(named: "tabbar_compose_icon_add"), forState: UIControlState.Normal)
        button.setImage(UIImage(named: "tabbar_compose_icon_add_highlighted"), forState: UIControlState.Highlighted)
        button.setBackgroundImage(UIImage(named: "tabbar_compose_button"), forState: UIControlState.Normal)
        button.setBackgroundImage(UIImage(named: "tabbar_compose_button_highlighted"), forState: UIControlState.Highlighted)
        self.addSubview(button)
        return button
    }()
    
}

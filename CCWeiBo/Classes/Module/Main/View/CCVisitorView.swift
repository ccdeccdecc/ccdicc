//
//  CCVisitorView.swift
//  CCWeiBo
//
//  Created by apple on 15/10/27.
//  Copyright © 2015年 eason. All rights reserved.
//

import UIKit

class CCVisitorView: UIView {
    //MARK: -构造函数
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        prepareUI()
    }
    ///准备UI
    func prepareUI() {
        //添加子控件
        addSubview(iconView)
        addSubview(homeView)
        addSubview(messageLable)
        addSubview(registerButton)
        addSubview(loginButton)
        
        //设置约束
    }


    //MARK: -懒加载
    /// 转轮
    private lazy var iconView: UIImageView = {
        let imageView = UIImageView()
        let image = UIImage(named: "visitordiscover_feed_image_smallicon")
        imageView.image = image
        
        imageView.sizeToFit()
        return imageView
    }()
    
    ///小房子
    private lazy var homeView: UIImageView = {
        let imageView = UIImageView()
        
        let image = UIImage(named: "visitordiscover_feed_image_house")
        imageView.image = image
        
        imageView.sizeToFit()
        return imageView
    }()
    
    ///消息文字
    private lazy var messageLable: UILabel = {
        let messageLable = UILabel()
        messageLable.text = "关注一些人,看看有什么惊喜"
        
        messageLable.sizeToFit()
        return messageLable
    }()

    ///注册按钮
    private lazy var registerButton: UIButton = {
        let button = UIButton()
        //设置文字
        button.setTitle("注册", forState: UIControlState.Normal)
        //设置背景
        button.setBackgroundImage(UIImage(named: "common_button_white_disable"), forState: UIControlState.Normal)
        
        button.sizeToFit()
        return button
    }()
    ///登录按钮
    private lazy var loginButton: UIButton = {
        let button = UIButton()
        //设置文字
        button.setTitle("登录", forState: UIControlState.Normal)
        //设置背景
        button.setBackgroundImage(UIImage(named: "common_button_white_disable"), forState: UIControlState.Normal)
        
        button.sizeToFit()
        return button
    }()
}

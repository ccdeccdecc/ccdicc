//
//  CCBaseTableViewController.swift
//  CCWeiBo
//
//  Created by apple on 15/10/27.
//  Copyright © 2015年 eason. All rights reserved.
//

import UIKit

class CCBaseTableViewController: UITableViewController {

    
    let userLogin = false
    override func loadView() {
        userLogin ? super.loadView() : setupVisitorView()
    }
    
    func setupVisitorView() {
        view = UIView()
        view.backgroundColor = UIColor.magentaColor()
        
    }

}

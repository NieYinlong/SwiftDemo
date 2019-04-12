//
//  MineVC.swift
//  Swift实战
//
//  Created by nyl on 2018/10/29.
//  Copyright © 2018年 nieyinlong. All rights reserved.
//

import UIKit

class MineVC: BaseViewController {

    
   lazy var menus: [String: AnyObject] = {
    
        var section1Arr = ["", "", ""]
        var section2Arr = ["", "", ""]
        var dic = ["" : section1Arr,
                   "" : section2Arr]
        
        return dic
    }()
    
    lazy var mineTableView: UITableView = {
        var tableView = UITableView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), style: .grouped)
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        
        
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let alert = UIAlertController(title: "提示", message: "退出登录?", preferredStyle: .alert)
        let cAction = UIAlertAction(title: "取消", style: UIAlertActionStyle.cancel, handler: nil)
        let okAction = UIAlertAction(title: "确定", style: .default) { (action) in
            
            let appDelegate = (UIApplication.shared.delegate) as! AppDelegate
            appDelegate.logout()
        }
        
        alert.addAction(cAction)
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }

}

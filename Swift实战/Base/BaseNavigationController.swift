//
//  BaseNavigationController.swift
//  Swift实战
//
//  Created by nyl on 2018/10/29.
//  Copyright © 2018年 nieyinlong. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 导航栏改为不透明, frame计算自动在导航栏一下
        self.navigationBar.isTranslucent = false
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

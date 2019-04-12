//
//  YLTableViewModel.swift
//  Swift实战
//
//  Created by nyl on 2018/10/12.
//  Copyright © 2018年 nieyinlong. All rights reserved.
//

import UIKit

class YLTableViewModel: NSObject {

    func requestNet(response: (_ flag: Bool, _ resArr: [String]) ->Void)  {
        
    }
    
    func requestNet2(response: @escaping (_ flag: Bool, _ resArr: [String]) ->Void)  {
        
    }
    
    func test() {
        requestNet { (flag, arr) in
            print(arr)
        }
        
        requestNet2 { (flg, arr) in
            
        }
    }
  
    
    // 定义数据请求，使用闭包回调
    class func requestData(response: @escaping (_ flag: Bool ,_ resArray: [YLTableModel]?) -> Void ) {
        // 模拟数据
        var dataArr: [YLTableModel] = [YLTableModel]()
        
        var subtitleArr: [String] = ["1111111111", "2222222222", "3333333333", "4444444444"]
        
        var imageArr: [String] = ["", "", "", ""]
        
        for i in 1...20 {
            // 使用自定义模型
            var model: YLTableModel = YLTableModel()
            model.titleStr = "\(i) row"
            model.subTitleStr = subtitleArr[i % 4] // [i% 4] 数组下标取值
            model.imageStr = imageArr[i % 3]
            
            dataArr.append(model)
        }
        
        // 回调出去
        response(true, dataArr)
    }
    
    
    
    
}

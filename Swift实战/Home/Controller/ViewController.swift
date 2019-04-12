//
//  ViewController.swift
//  Swift实战
//
//  Created by nyl on 2018/10/11.
//  Copyright © 2018年 nieyinlong. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController{

    
    lazy var dataArray = [YLTableModel]()
    
    
    //var listTableView: UITableView!
    // 懒加载
    private lazy var listTableView: UITableView = {
        let tableView = UITableView(frame: UIScreen.main.bounds, style: .grouped)
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "书籍"
        initUI()
        getData()
        
    
        let urlStr1 = "http://api.doufu.diaobao.la/index.php/topics/latestNovels?last=&size=2"
    
        Alamofire.request(urlStr1, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil).responseJSON { (response) in
            if(response.error == nil){
                //LLog("请求成功")
                //LLog(response.result.value)
                
            }else{
                //LLog("请求失败\(String(describing: response.error))")
            }
            
        }
    
        
        bibao(closure: {
            
        }, stateCode: 1)
        
        requetNet(success: { (data) in
            print(data)
        }) {
            
        }
    }
    
    
    func bibao(closure: () -> Void, stateCode: Int)  {
        
    }
    
    func requetNet(success: ([String: String])-> Void, fail failed: () -> Void) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    deinit {
        print("\(self.classForCoder) 释放了。。。")
    }
    
    
    func initUI() {
        self.view.addSubview(self.listTableView)
    }
    
    func getData() {
        YLTableViewModel.requestData { (flag, resList) in
            if flag {
                self.dataArray = resList!
                self.listTableView.reloadData()
            }
        }
    }
    
}




extension ViewController: UITableViewDelegate, UITableViewDataSource  {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:YLTableViewCell = YLTableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "cellIden")
        let model: YLTableModel = self.dataArray[indexPath.row]
        
        cell.rightLbl.text = model.titleStr
        cell.leftImagV.image = UIImage(named: "testImg")
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.5
    }
}


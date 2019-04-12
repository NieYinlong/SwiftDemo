//
//  YLTableViewCell.swift
//  Swift实战
//
//  Created by nyl on 2018/10/25.
//  Copyright © 2018年 nieyinlong. All rights reserved.
//

import UIKit


class YLTableViewCell: UITableViewCell {

   lazy var leftImagV: UIImageView = UIImageView()
    
   lazy var rightLbl: UILabel = {
        var lbl = UILabel()
        lbl.textColor = UIColor.darkGray
        lbl.font = UIFont.systemFont(ofSize: 22)
        return lbl
    }()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        
        initUI()
    }
   
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func initUI(){

        self.leftImagV.backgroundColor = UIColor.red
        self.contentView.addSubview(self.leftImagV)
        self.contentView.addSubview(self.rightLbl)
        
        
        self.leftImagV.snp.makeConstraints { (make) in
            make.left.equalTo(AdaptW(24))
            make.centerY.equalTo(self.contentView)
            make.width.height.equalTo(AdaptW(50));
        }
        
        self.rightLbl.snp.makeConstraints { (make) in
            make.left.equalTo(self.leftImagV.snp.right).offset(AdaptW(24))
            make.right.equalTo(self.contentView.snp.right).offset(-AdaptW(24));
            make.centerY.equalTo(leftImagV)
        }
        
        
        
        
        
    }
    
    
}

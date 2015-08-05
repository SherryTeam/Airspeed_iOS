//
//  RJ_SJViewController.swift
//  Airspeed_iOS
//
//  Created by 仇寻 on 15/8/4.
//  Copyright © 2015年 SherryTeam. All rights reserved.
//

import UIKit

class RJ_SJViewController:UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addPageMenu()
        self.view.backgroundColor = UIColor.orangeColor()
    }
    
    // MARK: - 添加PageMenu
    var scroll: XLScrollViewer!
    var tab1 = UIViewController()
    var tab2 = UIViewController()
    func addPageMenu() {
        let frame = CGRectMake(0,64, self.view.frame.size.width, self.view.frame.size.height - 64)   //如果没有导航栏，则去掉64
        //
        //        //对应填写两个数组
        self.addChildViewController(tab1)
        self.addChildViewController(tab2)
        
        let views = [tab1.view, tab2.view]
        let names = ["上架物品","上架需求"]
        
        //        //创建使用
        tab1.view.backgroundColor = UIColor.blackColor()
        tab2.view.backgroundColor = UIColor.blackColor()
        self.scroll = XLScrollViewer(frame: frame, withViews: views, withButtonNames: names, withThreeAnimation: 211)
        //
        //自定义各种属性。。打开查看
        //  self.scroll.xl_topBackImage =[UIImage imageNamed:@"10.jpg"];
        self.scroll.xl_topBackColor = UIColor.whiteColor()
        self.scroll.xl_sliderColor = UIColor.blueColor()
        self.scroll.xl_buttonColorNormal = UIColor.blackColor()
        self.scroll.xl_buttonColorSelected = UIColor.blueColor()
        self.scroll.xl_buttonFont = 14
        self.scroll.xl_buttonToSlider = 7
        self.scroll.xl_sliderHeight = 3
        self.scroll.xl_topHeight = 40
        self.scroll.xl_isSliderCorner = true
        
        //加入控制器视图
        self.view.addSubview(scroll)
        
    }
}

//
//  MyNavigationViewController.swift
//  Airspeed_iOS
//
//  Created by xiaolei on 15/8/5.
//  Copyright © 2015年 SherryTeam. All rights reserved.
//

import UIKit

class MyNavigationViewController:ENSideMenuNavigationController,ENSideMenuDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        sideMenu = ENSideMenu(sourceView: self.view, menuViewController: MyMenuTableViewController(), menuPosition: ENSideMenuPosition.Left)
        
//        sideMenu?.menuWidth = 180.0 // optional, default is 160
        
        // Dispose of any resources that can be recreated.
        view.bringSubviewToFront(navigationBar)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    // MARK: - ENSideMenu Delegate
    func sideMenuWillOpen() {
        
    }
    
    func sideMenuWillClose() {
        
    }



}

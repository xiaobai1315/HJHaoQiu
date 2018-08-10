//
//  HJTabBar.swift
//  HJHaoQiu
//
//  Created by Jermy on 2018/8/10.
//  Copyright © 2018年 Jermy. All rights reserved.
//

import UIKit

class HJTabBar: UITabBar {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        setupTabBar()
    }
    
    //重新布局tabbar
    func setupTabBar() -> Void {
        
        var _index : CGFloat = 0

        let btnW : CGFloat = self.frame.size.width / 5.0
        let btnH : CGFloat = self.frame.size.height
        let btnY : CGFloat = 0.0
        var btnX : CGFloat = 0.0
        
        for view in self.subviews {
            if view.isKind(of: NSClassFromString("UITabBarButton")!) != true {
                continue
            }
            
            btnX = _index * btnW
            
            if _index > 1 {
                btnX = btnX + btnW
            }
            
            view.frame = CGRect(x: btnX, y: btnY, width: btnW, height: btnH)
            
            _index = _index + 1
        }
    }
}

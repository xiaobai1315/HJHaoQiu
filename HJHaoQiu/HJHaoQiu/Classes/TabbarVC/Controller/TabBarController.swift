//
//  TabBarController.swift
//  HJHaoQiu
//
//  Created by Jermy on 2018/8/10.
//  Copyright © 2018年 Jermy. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //添加子控制器
        setUpViewController(viewController: MainViewController(), title: "main", image: "main")
        setUpViewController(viewController: LiveViewController(), title: "live", image: "live")
//        setUpViewController(viewController: MatchViewController(), title: "match", image: "match")
        setUpViewController(viewController: EventViewController(), title: "event", image: "event")
        setUpViewController(viewController: MineViewController(), title: "mine", image: "mine")
        
        //设置tabbar
        self.setValue(HJTabBar(), forKey: "tabBar")
    }
    
    func setUpViewController(viewController : UIViewController, title : String, image : String) -> Void {
        
        let navigationVC = UINavigationController(rootViewController: viewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = UIImage.init(named: image)
        navigationVC.tabBarItem.selectedImage = UIImage.init(named: (image + "_sel"))
        
        let normalDic = [NSAttributedStringKey.foregroundColor : UIColor.gray]
        navigationVC.tabBarItem.setTitleTextAttributes(normalDic, for: UIControlState.normal)
        
        let selecteDic = [NSAttributedStringKey.foregroundColor : UIColor.red]
        navigationVC.tabBarItem.setTitleTextAttributes(selecteDic, for: UIControlState.selected)

        self.addChildViewController(navigationVC);
    }

}

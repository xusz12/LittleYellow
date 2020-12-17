//
//  DiscoveryVC.swift
//  LittleYellow
//
//  Created by Death__X on 2020/12/9.
//

import UIKit
import XLPagerTabStrip
class DiscoveryVC: ButtonBarPagerTabStripViewController ,IndicatorInfoProvider{

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        []
    }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "发现")
    }
    
}

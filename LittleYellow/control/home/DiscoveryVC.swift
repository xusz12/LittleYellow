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
        var vcs : [UIViewController] = []
        for tag in kTags{
            let vc = self.storyboard!.instantiateViewController(identifier: kWaterfallVCID) as! WaterfallVC
            vc.tagName = tag
            vcs.append(vc)
        }
        return vcs
    }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "发现")
    }
    
}

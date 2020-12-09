//
//  HomeVC.swift
//  LittleYellow
//
//  Created by Death__X on 2020/12/9.
//

import UIKit
import XLPagerTabStrip

class HomeVC: ButtonBarPagerTabStripViewController{
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let followVC = self.storyboard!.instantiateViewController(identifier: kFollowVCID)
        let discoveryVC = self.storyboard!.instantiateViewController(identifier: kDiscoveryVCID)
        let nearbyVC = self.storyboard!.instantiateViewController(identifier: kNearbyVCID)
        return [followVC,discoveryVC,nearbyVC]
    }

}

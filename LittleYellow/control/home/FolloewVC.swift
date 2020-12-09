//
//  FolloewVC.swift
//  LittleYellow
//
//  Created by Death__X on 2020/12/9.
//

import UIKit
import XLPagerTabStrip

class FolloewVC: UIViewController, IndicatorInfoProvider{
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "关注")
    }
}

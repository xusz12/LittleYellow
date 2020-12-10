
import UIKit
import XLPagerTabStrip

class HomeVC: ButtonBarPagerTabStripViewController{
    

    override func viewDidLoad() {
        // MARK: 使用第三方库改变最上面bar，按钮，条的UI
        //selectedBar--title下面的显示条
        //可以command+control+点击名 进入包源码
        settings.style.selectedBarBackgroundColor = UIColor(named: "main")!
        settings.style.selectedBarHeight = 2
        //cell的大小，字体，颜色
        settings.style.buttonBarItemTitleColor = .label
        settings.style.buttonBarItemBackgroundColor = .clear
        settings.style.buttonBarItemFont = UIFont.systemFont(ofSize: 15)
        settings.style.buttonBarItemLeftRightMargin = 0
        //复制包的example代码,改变了被选中title的颜色(选中的深色,为选中浅色)
        changeCurrentIndexProgressive = { (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }
            oldCell?.label.textColor = .secondaryLabel
            newCell?.label.textColor = .label
            if animated {
                UIView.animate(withDuration: 0.1, animations: { () -> Void in
                    newCell?.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                    oldCell?.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
                })
            }
            else {
                newCell?.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                oldCell?.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
            }
        }
        
        super.viewDidLoad()

        
    }
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let followVC = self.storyboard!.instantiateViewController(identifier: kFollowVCID)
        let discoveryVC = self.storyboard!.instantiateViewController(identifier: kDiscoveryVCID)
        let nearbyVC = self.storyboard!.instantiateViewController(identifier: kNearbyVCID)
        return [followVC,discoveryVC,nearbyVC]
    }

}

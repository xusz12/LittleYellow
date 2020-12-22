
import UIKit
import CHTCollectionViewWaterfallLayout
import XLPagerTabStrip

class WaterfallVC: UICollectionViewController{

    var tagName = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        let layout = collectionView.collectionViewLayout as! CHTCollectionViewWaterfallLayout
        layout.columnCount = 2
        layout.minimumColumnSpacing = kSpaceNum
        layout.minimumInteritemSpacing = kSpaceNum
        layout.sectionInset = UIEdgeInsets(top: 0, left: kSpaceNum, bottom: kSpaceNum, right: kSpaceNum)
        layout.itemRenderDirection = .shortestFirst
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 11
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: kWaterfallCellID, for: indexPath) as! WaterfallCell
        switch tagName {
        case "私房":
            cell.imageView.image = UIImage(named: "\(indexPath.item + 1)")
        default:
            cell.imageView.image = UIImage(named: "1")
        }
        return cell
    }

}
// MARK: - CHTCollectionViewDelegateWaterfallLayout
extension WaterfallVC : CHTCollectionViewDelegateWaterfallLayout,IndicatorInfoProvider{
    func collectionView(_ collectionView: UICollectionView!, layout collectionViewLayout: UICollectionViewLayout!, sizeForItemAt indexPath: IndexPath!) -> CGSize {
        if tagName == "私房"{
            return UIImage(named: "\(indexPath.item+1)")!.size
        }else{
            return UIImage(named: "1")!.size
        }
    }

    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: tagName)
    }
}

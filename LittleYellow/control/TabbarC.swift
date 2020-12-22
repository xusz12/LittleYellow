
import UIKit
import YPImagePicker
class TabbarC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }

}
extension TabbarC : UITabBarControllerDelegate{
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if let vc = viewController as? PostVC{
            
            let picker = YPImagePicker()
            picker.didFinishPicking { [unowned picker] items, _ in
                if let photo = items.singlePhoto {
                    print(photo.fromCamera) // Image source (camera or library)
                    print(photo.image) // Final image selected by the user
                    print(photo.originalImage) // original image selected by the user, unfiltered
                }
                picker.dismiss(animated: true, completion: nil)
            }
            present(picker, animated: true, completion: nil)
            
            
            return false
        }
        return true
    }
}

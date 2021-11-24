import UIKit


class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Self.shared = self
    }
    
    
    
    
    // MARK: - Select Tab
    
    static weak var shared: UITabBarController? {
        didSet {
            // QuickAction ShortcutItem action happens before tabBarController is init
            shared?.selectedIndex = selectedIndex
        }
    }
    
    static var selectedIndex: Int = 0 {
        didSet {
            // select tab index
            shared?.selectedIndex = selectedIndex
        }
    }
}

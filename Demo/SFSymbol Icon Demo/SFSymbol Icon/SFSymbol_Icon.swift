import UIKit



class SFSymbol_Icon {
    
    // MARK: - Quick Action ShortcutItem
    
    enum ShortcutAction: String {
        case staticIcon
        case dynamicIcon
    }

    static var shortcutItem: UIApplicationShortcutItem {
        
        UIApplicationShortcutItem(type: ShortcutAction.dynamicIcon.rawValue,
                                  localizedTitle: "SFSymbol Icon (Dynamic)",
                                  localizedSubtitle: nil,
                                  icon: UIApplicationShortcutIcon(templateImageName: "symbol.icon"),
                                  userInfo: nil)
    }
    
    
    
    
    
    // MARK: - TabBarItem
    
    static var tabBarItem: UITabBarItem {
        
        UITabBarItem(title: "Dynamic",
                                      image: UIImage(imageLiteralResourceName: "symbol.icon"),
                                      selectedImage: UIImage(imageLiteralResourceName: "symbol.icon"))
    }
}

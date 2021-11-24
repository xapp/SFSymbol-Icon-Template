
/*
 
 SFSymbol Icon
 
 
 If you like SFSymbol
 https://apps.apple.com/app/apple-store/id1533525753?pt=119131575&ct=SFSymbol-Icon-Demo&mt=8
 
 */

/// Device ID (listed [here](https://link.to.resource/DID/))

import UIKit



class SFSymbol_Icon {
    
    // MARK: - Quick Action ShortcutItem
    
    enum Action: String {
        case staticIcon
        case dynamicIcon
    }

    static var shortcutItem: UIApplicationShortcutItem {
        
        UIApplicationShortcutItem(type: Action.dynamicIcon.rawValue,
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

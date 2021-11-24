import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    // MARK: - Set Dynamic ShortcutItem
    
    func sceneWillResignActive(_ scene: UIScene) {
        
        UIApplication.shared.shortcutItems = [SFSymbol_Icon.shortcutItem]
    }
        
    
    
    
    
    // MARK: - Perform ShortcutItem Action
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        if let shortcutItem = connectionOptions.shortcutItem {
            self.performAction(for: shortcutItem)
        }
    }
    
    func windowScene(_ windowScene: UIWindowScene, performActionFor shortcutItem: UIApplicationShortcutItem) async -> Bool {
        
        self.performAction(for: shortcutItem)
        return true
    }
    
    func performAction(for shortcutItem: UIApplicationShortcutItem) {
        
        switch SFSymbol_Icon.ShortcutAction(rawValue: shortcutItem.type)! {
        case .staticIcon: TabBarController.selectedIndex = 0
        case .dynamicIcon: TabBarController.selectedIndex = 1
        }
    }
}


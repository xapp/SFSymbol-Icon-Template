import UIKit

class SFSymbolIconController: UIViewController {
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        // set tabBarItem with dynamic icon
        self.navigationController?.tabBarItem = SFSymbol_Icon.tabBarItem
    }
}


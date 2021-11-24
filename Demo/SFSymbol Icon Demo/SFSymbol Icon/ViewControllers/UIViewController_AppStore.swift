import UIKit
import StoreKit

extension UIViewController: SKStoreProductViewControllerDelegate {
    
    @IBAction func appStore() {
        
        let appStoreController = SKStoreProductViewController()
        appStoreController.delegate = self
        
        appStoreController.loadProduct(withParameters: [SKStoreProductParameterITunesItemIdentifier: "1533525753",
                                                        SKStoreProductParameterProviderToken: "119131575",
                                                        SKStoreProductParameterCampaignToken: "SFSymbol-Icon-Demo"]) { (result: Bool, error: Error?) in

            if result {
                self.present(appStoreController, animated: true) {
                    print("App Store Controller is presented")
                }
            } else {
                if let error = error {
                    print("App Store Controller error: \(error.localizedDescription)")
                }
            }
        }
    }
    
    
    public func productViewControllerDidFinish(_ viewController: SKStoreProductViewController) {
        
        viewController.presentingViewController?.dismiss(animated: true, completion: {
            print("App Store Controller is dismissed")
        })
    }
}

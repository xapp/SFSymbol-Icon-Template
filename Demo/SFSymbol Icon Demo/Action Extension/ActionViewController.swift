import UIKit

class ActionViewController: UIViewController {

    @IBAction func cancel() {
        self.extensionContext!.completeRequest(returningItems: self.extensionContext!.inputItems, completionHandler: nil)
    }
}

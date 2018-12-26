import UIKit
class VCScreen2: UIViewController {

    @IBOutlet weak var textWillShowTF: UITextField!
    
    @IBAction func pressEnterButton(_ sender: UIButton) {
        NotificationCenter.default.post(name: .textChoose, object: nil, userInfo: ["name": textWillShowTF.text ?? ""])
    navigationController?.popViewController(animated: true)
    }
}

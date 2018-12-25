import UIKit
class VCScreen2: UIViewController {

    @IBOutlet weak var tfShow: UITextField!
    
    @IBAction func enter(_ sender: UIButton) {
        NotificationCenter.default.post(name: .lblShow, object: nil, userInfo: ["name": tfShow.text ?? ""])
    navigationController?.popViewController(animated: true)
    }
}

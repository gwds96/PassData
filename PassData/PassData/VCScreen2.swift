import UIKit
class VCScreen2: UIViewController {
    
    var show : ((_ text: String) -> ())?

    @IBOutlet weak var tfShow: UITextField!
    
    @IBAction func enter(_ sender: UIButton) {
        show?(tfShow.text ?? "")
    navigationController?.popViewController(animated: true)
    }
}

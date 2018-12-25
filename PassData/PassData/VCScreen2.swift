import UIKit

protocol PassDataDelegate: class {
    func Show(string: String)
}

class VCScreen2: UIViewController {

    @IBOutlet weak var tfShow: UITextField!

    weak var delegate: PassDataDelegate?
    
    @IBAction func enter(_ sender: UIButton) {
        delegate?.Show(string: tfShow.text ?? "")
    navigationController?.popViewController(animated: true)
    }
}

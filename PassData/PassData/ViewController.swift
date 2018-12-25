import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblShow: UILabel!
    
    @IBAction func OK(_ sender: UIButton) {
        let db = UIStoryboard(name: "Main", bundle: nil)
        let screen = db.instantiateViewController(withIdentifier: "screen2") as! VCScreen2
        screen.show = { [weak self] (text) in
            self?.lblShow.text = text
        }
//        screen.delegate = self
    navigationController?.pushViewController(screen, animated: true)
    }
}
//
//extension ViewController: PassDataDelegate {
//    func Show(string: String) {
//        lblShow.text = string
//    }
//}

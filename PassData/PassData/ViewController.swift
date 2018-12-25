import UIKit

class ViewController: UIViewController, PassDataDelegate {
    
    func Show(string: String) {
        lblShow.text = string
    }
    
    @IBOutlet weak var lblShow: UILabel!
    
    @IBAction func OK(_ sender: UIButton) {
        let db = UIStoryboard(name: "Main", bundle: nil)
        let screen = db.instantiateViewController(withIdentifier: "screen2") as! VCScreen2
        screen.delegate = self
    navigationController?.pushViewController(screen, animated: true)
    }
}


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblShow: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(lblShow(notification:)), name: .lblShow, object: nil)
    }
    
    @objc func lblShow(notification: Notification){
        if let text = notification.userInfo {
            if let choose = text["name"] as? String {
                lblShow.text = choose
            }
        }
    }
    
    @IBAction func OK(_ sender: UIButton) {
        let db = UIStoryboard(name: "Main", bundle: nil)
        let screen = db.instantiateViewController(withIdentifier: "screen2") as! VCScreen2
    navigationController?.pushViewController(screen, animated: true)
    }
}

extension Notification.Name {
    static let lblShow = Notification.Name("lblShow")
}

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textShowLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(lblShow(notification:)), name: .textChoose, object: nil)
    }
    
    @objc func lblShow(notification: Notification){
        if let text = notification.userInfo,
            let choose = text["name"] as? String {
                textShowLabel.text = choose
            }
    }
    
    @IBAction func pressOkButton(_ sender: UIButton) {
        let db = UIStoryboard(name: "Main", bundle: nil)
        let screen = db.instantiateViewController(withIdentifier: "screen2") as! VCScreen2
    navigationController?.pushViewController(screen, animated: true)
    }
}

extension Notification.Name {
    static let textChoose = Notification.Name("Show This Text")
}

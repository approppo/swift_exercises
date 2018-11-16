import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!

    // tag::slow[]
    @IBAction func calculate(_ sender: Any) {
        resultLabel.text = "Calculating…"
        let result = Date()
        sleep(10)
        resultLabel.text = "Result = \(result)"
    }
    // end::slow[]
}


// tag::slow[]
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!

    @IBAction func calculate(_ sender: Any) {
        resultLabel.text = "Calculating…"
        var result = 0
        for i in 0...3000000000 {
            result += i
        }
        resultLabel.text = "Result = \(result)"
    }
}
// end::slow[]


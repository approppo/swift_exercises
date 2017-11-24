import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!

    // tag::calc[]
    @IBAction func calculate(_ sender: Any) {
        resultLabel.text = "Calculating…"

        let queue = DispatchQueue(label: "training.akosma.queue")

        queue.async {
            var result = 0
            for i in 0...3000000000 {
                result += i
            }
            DispatchQueue.main.async {
                self.resultLabel.text = "Result = \(result)"
            }
        }
    }
    // end::calc[]

    
    // tag::calc_global[]
    @IBAction func calculateGlobalQueue(_ sender: Any) {
        resultLabel.text = "Calculating…"
        
        // Global concurrent system background queue
        DispatchQueue.global().async {
            var result = 0
            for i in 0...3000000000 {
                result += i
            }
            DispatchQueue.main.async { [unowned self] in
                self.resultLabel.text = "Result = \(result)"
            }
        }
    }
    // end::calc_global[]
}

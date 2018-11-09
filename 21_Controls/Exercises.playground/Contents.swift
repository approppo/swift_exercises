import PlaygroundSupport
import CoreGraphics
import UIKit

class Controller : UIViewController {
    let label = UILabel(frame: CGRect(x: 50, y: 50, width: 400, height: 40))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sw = UISwitch()
        sw.center = CGPoint(x: 50, y: 150)
        sw.addTarget(self, action: #selector(action), for: .valueChanged)
        
        let info = UIButton(type: .infoLight)
        info.center = CGPoint(x: 50, y: 200)
        info.addTarget(self, action: #selector(action), for: .touchUpInside)
        
        let slider = UISlider()
        slider.center = CGPoint(x: 150, y: 250)
        slider.addTarget(self, action: #selector(action), for: .valueChanged)
        
        let field = UITextField(frame: CGRect(x: 50, y: 300, width: 150, height: 40))
        field.placeholder = "Placeholder text"
        field.backgroundColor = .lightGray
        field.textColor = .white
        field.addTarget(self, action: #selector(action), for: .editingChanged)
        
        let stepper = UIStepper()
        stepper.center = CGPoint(x: 300, y: 300)
        stepper.addTarget(self, action: #selector(action), for: .valueChanged)
        
        let datePicker = UIDatePicker()
        datePicker.center = CGPoint(x: 200, y: 500)
        datePicker.addTarget(self, action: #selector(dateChanged), for: .valueChanged)
        
        view.backgroundColor = .white
        view.addSubview(label)
        view.addSubview(sw)
        view.addSubview(info)
        view.addSubview(slider)
        view.addSubview(field)
        view.addSubview(stepper)
        view.addSubview(datePicker)
    }
    
    @objc func action(sender: UIControl) {
        label.text = "Interaction with: \(type(of: sender))"
    }
    
    @objc func dateChanged(sender: UIDatePicker) {
        label.text = sender.date.description
    }
}

let controller = Controller()

PlaygroundPage.current.liveView = controller
PlaygroundPage.current.needsIndefiniteExecution = true

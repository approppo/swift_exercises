import UIKit

class Canvas: UIView {

    // tag::setup[]
    var lines = [UIBezierPath]()
    var currentLine : UIBezierPath? = nil
    // end::setup[]

    // tag::create[]
    override func layoutSubviews() {
        self.backgroundColor = .white

        let recognizer = UIPanGestureRecognizer(target: self,
                                                action: #selector(pan))
        self.addGestureRecognizer(recognizer)
    }
    // end::create[]

    // tag::draw[]
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        context?.setStrokeColor(UIColor.black.cgColor)
        context?.setLineWidth(2.0)

        for line in lines {
            line.stroke()
        }
    }
    // end::draw[]

    // tag::pan[]
    @objc func pan(sender: UIPanGestureRecognizer) {
        let point = sender.location(in: self)

        switch sender.state {
        case .began:
            currentLine = UIBezierPath()
            currentLine?.move(to: point)
            lines.append(currentLine!)

        case .changed:
            currentLine?.addLine(to: point)
            setNeedsDisplay()

        case .ended:
            currentLine = nil

        default:
            break;
        }
    }
    // end::pan[]
}

import UIKit

@IBDesignable
class Awwbar: UIView {
    private var progressBarValue: (Double, Double) = (0,0)

    @IBInspectable var icon: UIImage?
    @IBInspectable var percent: Int = 1

    @IBInspectable var barColor: UIColor = UIColor.blue
    @IBInspectable var bgColor: UIColor = UIColor.clear

    @IBInspectable var thickness: Int = 20
    @IBInspectable var bgThickness: Int = 20

    @IBInspectable var isHalf: Bool = false

    override func draw(_ rect: CGRect) {
        var arcRadius = self.frame.size.width

        if self.frame.size.height < arcRadius && self.isHalf == false {
            arcRadius = self.frame.size.height
        }

        arcRadius -= 25

        self.addCirle(radius: arcRadius, thickness: CGFloat(self.thickness), backgroundThickness: CGFloat(self.bgThickness), percent: CGFloat(self.percent), color: self.barColor, backgroundColor: self.bgColor)
    }

    func addCirle(radius: CGFloat, thickness: CGFloat, backgroundThickness: CGFloat, percent: CGFloat, color: UIColor, backgroundColor: UIColor) {
        let X = self.bounds.midX
        var Y = self.bounds.midY

        var strokeStart: CGFloat = 0.0
        var strokeEnd: CGFloat = percent / 100

        if self.isHalf == true {
            Y = self.bounds.size.height
            strokeStart = 0.5
            strokeEnd = (strokeEnd / 2) + 0.5
        }

        let path = UIBezierPath(ovalIn: CGRect(x: (X - (radius/2)), y: (Y - (radius/2)), width: radius, height: radius)).cgPath

        // Background
        self.addOval(backgroundThickness, path: path, strokeStart: strokeStart, strokeEnd: 1.0, strokeColor: backgroundColor, fillColor: UIColor.clear, shadowRadius: 0, shadowOpacity: 0, shadowOffsset: CGSize.zero)

        // Bar
        self.addOval(thickness, path: path, strokeStart: strokeStart, strokeEnd: strokeEnd, strokeColor: color, fillColor: UIColor.clear, shadowRadius: 0, shadowOpacity: 0, shadowOffsset: CGSize.zero)

    }

    func addOval(_ lineWidth: CGFloat, path: CGPath, strokeStart: CGFloat, strokeEnd: CGFloat, strokeColor: UIColor, fillColor: UIColor, shadowRadius: CGFloat, shadowOpacity: Float, shadowOffsset: CGSize) {

        let arc = CAShapeLayer()
        arc.lineWidth = lineWidth
        arc.path = path
        arc.strokeStart = strokeStart
        arc.strokeEnd = strokeEnd
        arc.strokeColor = strokeColor.cgColor
        arc.fillColor = fillColor.cgColor
        arc.shadowColor = UIColor.black.cgColor
        arc.shadowRadius = shadowRadius
        arc.shadowOpacity = shadowOpacity
        arc.shadowOffset = shadowOffsset
        layer.addSublayer(arc)
    }
}

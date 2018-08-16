
import UIKit

class CustomUIView: UIView {

    var view: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupXIB()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupXIB()
    }
    
    func setupXIB() {
        view = setupeNib()
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(view)
    }
    
    func setupeNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "CustomUIView", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        return view
    }
}

//
//  CustomLoginTextfield.swift
//  RoamMate
//
//  Created by ziya on 12.07.23.
//

import UIKit

class CustomTextField: UITextField {

    var textPadding = UIEdgeInsets(
            top: 10,
            left: 20,
            bottom: 10,
            right: 20
        )
    
    func setup() {
        self.backgroundColor = UIColor(named: "Gray50")
        self.layer.cornerRadius = 16
        self.frame.size.height = 58
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
     }
    override func textRect(forBounds bounds: CGRect) -> CGRect {
           let rect = super.textRect(forBounds: bounds)
           return rect.inset(by: textPadding)
       }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
           let rect = super.editingRect(forBounds: bounds)
           return rect.inset(by: textPadding)
       }
    
}

extension UITextField {
func setIcon(_ image: UIImage) {
   let iconView = UIImageView(frame: CGRect(x: 10, y: 5, width: 24, height: 24))
   iconView.image = image
   let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 34, height: 34))

   iconContainerView.addSubview(iconView)
   leftView = iconContainerView
   leftViewMode = .always
    }
  
}

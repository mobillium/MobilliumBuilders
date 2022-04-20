//
//  UILabelBuilder.swift
//  MobilliumBuilders
//
//  Created by Murat Çelebi on 17.03.2021.
//

import UIKit

public class UILabelBuilder<T: UILabel> {
 
    public let label = T()
    
    public init() {}
    
    @discardableResult
    public func text(_ text: String) -> Self {
        self.label.text = text
        return self
    }
    
    @discardableResult
    public func textColor(_ textColor: UIColor) -> Self {
        self.label.textColor = textColor
        return self
    }
    
    @discardableResult
    public func font(_ font: UIFont?) -> Self {
        self.label.font = font
        return self
    }
    
    @discardableResult
    public func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        self.label.textAlignment = textAlignment
        return self
    }
    
    @discardableResult
    public func numberOfLines(_ numberOfLines: Int) -> Self {
        self.label.numberOfLines = numberOfLines
        return self
    }
    
    @discardableResult
    public func attributedText(_ attributedText: NSAttributedString) -> Self {
        self.label.attributedText = attributedText
        return self
    }
    
    @discardableResult
    public func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> Self {
        self.label.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        return self
    }
    
    @discardableResult
    public func backgroundColor(_ backgroundColor: UIColor) -> Self {
        self.label.backgroundColor = backgroundColor
        return self
    }
    
    @discardableResult
    public func cornerRadius(_ cornerRadius: CGFloat) -> Self {
        self.label.layer.cornerRadius = cornerRadius
        return self
    }
    
    @discardableResult
    public func clipsToBounds(_ clipsToBounds: Bool) -> Self {
        self.label.clipsToBounds = clipsToBounds
        return self
    }
    
    @discardableResult
    public func masksToBounds(_ masksToBounds: Bool) -> Self {
        self.label.layer.masksToBounds = masksToBounds
        return self
    }
    
    @discardableResult
    public func borderColor(_ borderColor: CGColor) -> Self {
        self.label.layer.borderColor = borderColor
        return self
    }
    
    @discardableResult
    public func borderWidth(_ borderWidth: CGFloat) -> Self {
        self.label.layer.borderWidth = borderWidth
        return self
    }
    
    @discardableResult
    public func shadowRadius(_ shadowRadius: CGFloat) -> Self {
        self.label.layer.shadowRadius = shadowRadius
        return self
    }
    
    @discardableResult
    public func shadowOpacity(_ shadowOpacity: Float) -> Self {
        self.label.layer.shadowOpacity = shadowOpacity
        return self
    }
    
    @discardableResult
    public func shadowColor(_ shadowColor: UIColor) -> Self {
        self.label.shadowColor = shadowColor
        return self
    }
    
    @discardableResult
    public func shadowOffset(_ shadowOffset: CGSize) -> Self {
        self.label.shadowOffset = shadowOffset
        return self
    }
    
    @discardableResult
    public func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> Self {
        self.label.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }
    
    @discardableResult
    public func minimumScaleFactor(_ minimumScaleFactor: CGFloat) -> Self {
        self.label.minimumScaleFactor = minimumScaleFactor
        return self
    }
    
    @discardableResult
    public func isHidden(_ isHidden: Bool) -> Self {
        self.label.isHidden = isHidden
        return self
    }

    @discardableResult
    public func isAccessibilityElement(_ isAccessibilityElement: Bool) -> Self {
        self.label.isAccessibilityElement = isAccessibilityElement
        return self
    }

    @discardableResult
    public func accessibilityIdentifier(_ accessibilityIdentifier: String?) -> Self {
        self.label.accessibilityIdentifier = accessibilityIdentifier
        return self
    }
    
    public func build() -> T {
        return label
    }
    
}

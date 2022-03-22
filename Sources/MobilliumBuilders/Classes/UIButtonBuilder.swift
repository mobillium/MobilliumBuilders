//
//  UIButtonBuilder.swift
//  MobilliumBuilders
//
//  Created by Murat Çelebi on 17.03.2021.
//

import UIKit

public class UIButtonBuilder<T: UIButton> {
    
    public let button: T
    
    public init(type: T.ButtonType = .system) {
        self.button = T(type: type)
    }
    
    @discardableResult
    public func backgroundColor(_ backgroundColor: UIColor) -> Self {
        self.button.backgroundColor = backgroundColor
        return self
    }
    
    @discardableResult
    public func tintColor(_ tintColor: UIColor) -> Self {
        self.button.tintColor = tintColor
        return self
    }
    
    @discardableResult
    public func title(_ title: String?, for state: UIControl.State = .normal) -> Self {
        self.button.setTitle(title, for: state)
        return self
    }
    
    @discardableResult
    public func titleFont(_ titleFont: UIFont?) -> Self {
        self.button.titleLabel?.font = titleFont
        return self
    }
    
    @discardableResult
    public func titleColor(_ titleColor: UIColor, for state: UIControl.State = .normal) -> Self {
        self.button.setTitleColor(titleColor, for: state)
        return self
    }
    
    @discardableResult
    public func cornerRadius(_ cornerRadius: CGFloat) -> Self {
        self.button.layer.cornerRadius = cornerRadius
        return self
    }
    
    @discardableResult
    public func clipsToBounds(_ clipsToBounds: Bool) -> Self {
        self.button.clipsToBounds = clipsToBounds
        return self
    }
    
    @discardableResult
    public func masksToBounds(_ masksToBounds: Bool) -> Self {
        self.button.layer.masksToBounds = masksToBounds
        return self
    }
    
    @discardableResult
    public func borderColor(_ borderColor: CGColor) -> Self {
        self.button.layer.borderColor = borderColor
        return self
    }
    
    @discardableResult
    public func borderWidth(_ borderWidth: CGFloat) -> Self {
        self.button.layer.borderWidth = borderWidth
        return self
    }
    
    @discardableResult
    public func titleShadowColor(_ titleShadowColor: UIColor?, for state: UIControl.State = .normal) -> Self {
        self.button.setTitleShadowColor(titleShadowColor, for: state)
        return self
    }
    
    @discardableResult
    public func image(_ image: UIImage?, for state: UIControl.State = .normal) -> Self {
        self.button.setImage(image, for: state)
        return self
    }
    
    @discardableResult
    public func backgroundImage(_ backgroundImage: UIImage?, for state: UIControl.State = .normal) -> Self {
        self.button.setBackgroundImage(backgroundImage, for: state)
        return self
    }
    
    @discardableResult
    public func contentEdgeInsets(_ contentEdgeInsets: UIEdgeInsets) -> Self {
        self.button.contentEdgeInsets = contentEdgeInsets
        return self
    }
    
    @discardableResult
    public func titleEdgeInsets(_ titleEdgeInsets: UIEdgeInsets) -> Self {
        self.button.titleEdgeInsets = titleEdgeInsets
        return self
    }
    
    @discardableResult
    public func imageEdgeInsets(_ imageEdgeInsets: UIEdgeInsets) -> Self {
        self.button.imageEdgeInsets = imageEdgeInsets
        return self
    }
    
    @discardableResult
    public func shadowColor(_ shadowColor: CGColor) -> Self {
        self.button.layer.shadowColor = shadowColor
        return self
    }
    
    @discardableResult
    public func shadowOffset(_ shadowOffset: CGSize) -> Self {
        self.button.layer.shadowOffset = shadowOffset
        return self
    }
    
    @discardableResult
    public func shadowRadius(_ shadowRadius: CGFloat) -> Self {
        self.button.layer.shadowRadius = shadowRadius
        return self
    }
    
    @discardableResult
    public func shadowOpacity(_ shadowOpacity: Float) -> Self {
        self.button.layer.shadowOpacity = shadowOpacity
        return self
    }
    
    @discardableResult
    public func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> Self {
        self.button.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }

    @discardableResult
    public func isHidden(_ isHidden: Bool) -> Self {
        self.button.isHidden = isHidden
        return self
    }

    @discardableResult
    public func isAccessibilityElement(_ isAccessibilityElement: Bool) -> Self {
        self.button.isAccessibilityElement = isAccessibilityElement
        return self
    }

    @discardableResult
    public func accessibilityIdentifier(_ accessibilityIdentifier: String?) -> Self {
        self.button.accessibilityIdentifier = accessibilityIdentifier
        return self
    }
    
    public func build() -> T {
        return button
    }
    
}

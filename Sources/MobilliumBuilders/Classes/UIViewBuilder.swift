//
//  UIViewBuilder.swift
//  MobilliumBuilders
//
//  Created by Murat Celebi on 18.03.2021.
//

import UIKit

public class UIViewBuilder<T: UIView> {
    
    public let view = T()
    
    public init() {}
    
    @discardableResult
    public func backgroundColor(_ backgroundColor: UIColor) -> Self {
        self.view.backgroundColor = backgroundColor
        return self
    }
    
    @discardableResult
    public func cornerRadius(_ cornerRadius: CGFloat) -> Self {
        self.view.layer.cornerRadius = cornerRadius
        return self
    }
    
    @discardableResult
    public func clipsToBounds(_ clipsToBounds: Bool) -> Self {
        self.view.clipsToBounds = clipsToBounds
        return self
    }
    
    @discardableResult
    public func masksToBounds(_ masksToBounds: Bool) -> Self {
        self.view.layer.masksToBounds = masksToBounds
        return self
    }
    
    @discardableResult
    public func borderColor(_ borderColor: CGColor) -> Self {
        self.view.layer.borderColor = borderColor
        return self
    }
    
    @discardableResult
    public func borderWidth(_ borderWidth: CGFloat) -> Self {
        self.view.layer.borderWidth = borderWidth
        return self
    }
    
    @discardableResult
    public func shadowColor(_ shadowColor: CGColor) -> Self {
        self.view.layer.shadowColor = shadowColor
        return self
    }
    
    @discardableResult
    public func shadowOffset(_ shadowOffset: CGSize) -> Self {
        self.view.layer.shadowOffset = shadowOffset
        return self
    }
    
    @discardableResult
    public func shadowRadius(_ shadowRadius: CGFloat) -> Self {
        self.view.layer.shadowRadius = shadowRadius
        return self
    }
    
    @discardableResult
    public func shadowOpacity(_ shadowOpacity: Float) -> Self {
        self.view.layer.shadowOpacity = shadowOpacity
        return self
    }
    
    @discardableResult
    public func alpha(_ alpha: CGFloat) -> Self {
        self.view.alpha = alpha
        return self
    }
    
    @discardableResult
    public func isOpaque(_ isOpaque: Bool) -> Self {
        self.view.isOpaque = isOpaque
        return self
    }
    
    @discardableResult
    public func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> Self {
        self.view.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }

    @discardableResult
    public func isHidden(_ isHidden: Bool) -> Self {
        self.view.isHidden = isHidden
        return self
    }

    @discardableResult
    public func isAccessibilityElement(_ isAccessibilityElement: Bool) -> Self {
        self.view.isAccessibilityElement = isAccessibilityElement
        return self
    }

    @discardableResult
    public func accessibilityIdentifier(_ accessibilityIdentifier: String?) -> Self {
        self.view.accessibilityIdentifier = accessibilityIdentifier
        return self
    }
    
    public func build() -> T {
        return view
    }
    
}

//
//  UIImageViewBuilder.swift
//  MobilliumBuilders
//
//  Created by Murat Celebi on 18.03.2021.
//

import UIKit

public class UIImageViewBuilder<T: UIImageView> {
    
    public let imageView = T()
    
    public init() {}
    
    @discardableResult
    public func image(_ image: UIImage) -> Self {
        self.imageView.image = image
        return self
    }
    
    @discardableResult
    public func backgroundColor(_ backgroundColor: UIColor) -> Self {
        self.imageView.backgroundColor = backgroundColor
        return self
    }
    
    @discardableResult
    public func cornerRadius(_ cornerRadius: CGFloat) -> Self {
        self.imageView.layer.cornerRadius = cornerRadius
        return self
    }
    
    @discardableResult
    public func tintColor(_ tintColor: UIColor) -> Self {
        self.imageView.tintColor = tintColor
        return self
    }
    
    @discardableResult
    public func clipsToBounds(_ clipsToBounds: Bool) -> Self {
        self.imageView.clipsToBounds = clipsToBounds
        return self
    }
    
    @discardableResult
    public func masksToBounds(_ masksToBounds: Bool) -> Self {
        self.imageView.layer.masksToBounds = masksToBounds
        return self
    }
    
    @discardableResult
    public func contentMode(_ contentMode: UIView.ContentMode) -> Self {
        self.imageView.contentMode = contentMode
        return self
    }
    
    @discardableResult
    public func borderColor(_ borderColor: CGColor) -> Self {
        self.imageView.layer.borderColor = borderColor
        return self
    }
    
    @discardableResult
    public func borderWidth(_ borderWidth: CGFloat) -> Self {
        self.imageView.layer.borderWidth = borderWidth
        return self
    }
    
    @discardableResult
    public func shadowRadius(_ shadowRadius: CGFloat) -> Self {
        self.imageView.layer.shadowRadius = shadowRadius
        return self
    }
    
    @discardableResult
    public func shadowOpacity(_ shadowOpacity: Float) -> Self {
        self.imageView.layer.shadowOpacity = shadowOpacity
        return self
    }
    
    @discardableResult
    public func shadowColor(_ shadowColor: CGColor) -> Self {
        self.imageView.layer.shadowColor = shadowColor
        return self
    }
    
    @discardableResult
    public func shadowOffset(_ shadowOffset: CGSize) -> Self {
        self.imageView.layer.shadowOffset = shadowOffset
        return self
    }

    @discardableResult
    public func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> Self {
        self.imageView.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }

    @discardableResult
    public func isHidden(_ isHidden: Bool) -> Self {
        self.imageView.isHidden = isHidden
        return self
    }

    @discardableResult
    public func isAccessibilityElement(_ isAccessibilityElement: Bool) -> Self {
        self.imageView.isAccessibilityElement = isAccessibilityElement
        return self
    }

    @discardableResult
    public func accessibilityIdentifier(_ accessibilityIdentifier: String?) -> Self {
        self.imageView.accessibilityIdentifier = accessibilityIdentifier
        return self
    }
    
    @discardableResult
    public func size(_ size: CGSize) -> Self {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.widthAnchor.constraint(equalToConstant: size.width).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: size.height).isActive = true
        return self
    }
    
    public func build() -> T {
        return imageView
    }
    
}

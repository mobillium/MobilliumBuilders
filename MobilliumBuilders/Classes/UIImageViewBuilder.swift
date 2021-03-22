//
//  UIImageViewBuilder.swift
//  MobilliumBuilders
//
//  Created by Murat Celebi on 18.03.2021.
//

import UIKit

public class UIImageViewBuilder<T: UIImageView> {
    
    private let imageView = T()
    
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
    
    public func build() -> T {
        return imageView
    }
    
}

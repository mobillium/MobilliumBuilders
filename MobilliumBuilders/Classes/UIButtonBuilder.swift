//
//  UIButtonBuilder.swift
//  MobilliumBuilders
//
//  Created by Murat Çelebi on 17.03.2021.
//  Copyright © 2021 Mobillium. All rights reserved.
//

import UIKit

public class UIButtonBuilder<T: UIButton> {
    
    private let button: T
    
    public init(type: T.ButtonType = .system) {
        self.button = T(type: type)
    }
    
    @discardableResult
    public func backgroundColor(_ backgroundColor: UIColor) -> Self {
        button.backgroundColor = backgroundColor
        return self
    }
    
    @discardableResult
    public func tintColor(_ tintColor: UIColor) -> Self {
        button.tintColor = tintColor
        return self
    }
    
    @discardableResult
    public func title(_ title: String?, for state: UIControl.State = .normal) -> Self {
        button.setTitle(title, for: state)
        return self
    }
    
    @discardableResult
    public func titleFont(_ titleFont: UIFont?) -> Self {
        button.titleLabel?.font = titleFont
        return self
    }
    
    @discardableResult
    public func titleColor(_ titleColor: UIColor, for state: UIControl.State = .normal) -> Self {
        button.setTitleColor(titleColor, for: state)
        return self
    }
    
    @discardableResult
    public func cornerRadius(_ cornerRadius: CGFloat) -> Self {
        button.layer.cornerRadius = cornerRadius
        return self
    }
    
    @discardableResult
    public func borderColor(_ borderColor: CGColor) -> Self {
        button.layer.borderColor = borderColor
        return self
    }
    
    @discardableResult
    public func borderWidth(_ borderWidth: CGFloat) -> Self {
        button.layer.borderWidth = borderWidth
        return self
    }
    
    @discardableResult
    public func titleShadowColor(_ titleShadowColor: UIColor?, for state: UIControl.State = .normal) -> Self {
        button.setTitleShadowColor(titleShadowColor, for: state)
        return self
    }
    
    @discardableResult
    public func image(_ image: UIImage?, for state: UIControl.State = .normal) -> Self {
        button.setImage(image, for: state)
        return self
    }
    
    @discardableResult
    public func backgroundImage(_ backgroundImage: UIImage?, for state: UIControl.State = .normal) -> Self {
        button.setBackgroundImage(backgroundImage, for: state)
        return self
    }
    
    @discardableResult
    public func contentEdgeInsets(_ contentEdgeInsets: UIEdgeInsets) -> Self {
        button.contentEdgeInsets = contentEdgeInsets
        return self
    }
    
    @discardableResult
    public func titleEdgeInsets(_ titleEdgeInsets: UIEdgeInsets) -> Self {
        button.titleEdgeInsets = titleEdgeInsets
        return self
    }
    
    @discardableResult
    public func imageEdgeInsets(_ imageEdgeInsets: UIEdgeInsets) -> Self {
        button.imageEdgeInsets = imageEdgeInsets
        return self
    }
    
    @discardableResult
    public func shadowColor(_ shadowColor: CGColor) -> Self {
        button.layer.shadowColor = shadowColor
        return self
    }
    
    @discardableResult
    public func shadowOffset(_ shadowOffset: CGSize) -> Self {
        button.layer.shadowOffset = shadowOffset
        return self
    }
    
    @discardableResult
    public func shadowRadius(_ shadowRadius: CGFloat) -> Self {
        button.layer.shadowRadius = shadowRadius
        return self
    }
    
    @discardableResult
    public func shadowOpacity(_ shadowOpacity: Float) -> Self {
        button.layer.shadowOpacity = shadowOpacity
        return self
    }
    
    public func build() -> T {
        return button
    }
    
}

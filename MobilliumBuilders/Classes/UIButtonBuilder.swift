//
//  UIButtonBuilder.swift
//  MobilliumBuilders
//
//  Created by Murat Çelebi on 17.03.2021.
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
    public func title(_ title: String?, state: UIControl.State = .normal) -> Self {
        button.setTitle(title, for: state)
        return self
    }
    
    @discardableResult
    public func titleFont(_ titleFont: UIFont?) -> Self {
        button.titleLabel?.font = titleFont
        return self
    }
    
    @discardableResult
    public func titleColor(_ titleColor: UIColor, state: UIControl.State = .normal) -> Self {
        button.setTitleColor(titleColor, for: state)
        return self
    }
    
    @discardableResult
    public func cornerRadius(_ cornerRadius: CGFloat) -> Self {
        button.layer.cornerRadius = cornerRadius
        return self
    }
    
    @discardableResult
    public func borderColor(_ color: CGColor) -> Self {
        button.layer.borderColor = color
        return self
    }
    
    @discardableResult
    public func borderWidth(_ width: CGFloat) -> Self {
        button.layer.borderWidth = width
        return self
    }
    
    @discardableResult
    public func titleShadowColor(_ color: UIColor?, for state: UIControl.State = .normal) -> Self {
        button.setTitleShadowColor(color, for: state)
        return self
    }
    
    @discardableResult
    public func image(_ image: UIImage?, state: UIControl.State = .normal) -> Self {
        button.setImage(image, for: state)
        return self
    }
    
    @discardableResult
    public func backgroundImage(_ image: UIImage?, state: UIControl.State = .normal) -> Self {
        button.setBackgroundImage(image, for: state)
        return self
    }
    
    @discardableResult
    public func contentEdgeInsets(_ insets: UIEdgeInsets) -> Self {
        button.contentEdgeInsets = insets
        return self
    }
    
    @discardableResult
    public func titleEdgeInsets(_ insets: UIEdgeInsets) -> Self {
        button.titleEdgeInsets = insets
        return self
    }
    
    @discardableResult
    public func imageEdgeInsets(_ insets: UIEdgeInsets) -> Self {
        button.imageEdgeInsets = insets
        return self
    }
    
    @discardableResult
    public func shadowColor(_ color: CGColor) -> Self {
        button.layer.shadowColor = color
        return self
    }
    
    @discardableResult
    public func shadowOffset(_ size: CGSize) -> Self {
        button.layer.shadowOffset = size
        return self
    }
    
    @discardableResult
    public func shadowRadius(_ radius: CGFloat) -> Self {
        button.layer.shadowRadius = radius
        return self
    }
    
    @discardableResult
    public func shadowOpacity(_ opacity: Float) -> Self {
        button.layer.shadowOpacity = opacity
        return self
    }
    
    public func build() -> T {
        return button
    }
    
}

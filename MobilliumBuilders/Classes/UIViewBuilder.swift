//
//  UIViewBuilder.swift
//  MobilliumBuilders
//
//  Created by Murat Celebi on 18.03.2021.
//

import UIKit

public class UIViewBuilder<T: UIView> {
    
    private let view = T()
    
    public init() {}
    
    @discardableResult
    public func backgroundColor(_ backgroundColor: UIColor) -> Self {
        view.backgroundColor = backgroundColor
        return self
    }
    
    @discardableResult
    public func cornerRadius(_ cornerRadius: CGFloat) -> Self {
        view.layer.cornerRadius = cornerRadius
        return self
    }
    
    @discardableResult
    public func clipsToBounds(_ clipsToBounds: Bool) -> Self {
        view.clipsToBounds = clipsToBounds
        return self
    }
    
    @discardableResult
    public func masksToBounds(_ masksToBounds: Bool) -> Self {
        view.layer.masksToBounds = masksToBounds
        return self
    }
    
    @discardableResult
    public func borderColor(_ borderColor: CGColor) -> Self {
        view.layer.borderColor = borderColor
        return self
    }
    
    @discardableResult
    public func borderWidth(_ borderWidth: CGFloat) -> Self {
        view.layer.borderWidth = borderWidth
        return self
    }
    
    @discardableResult
    public func shadowColor(_ shadowColor: CGColor) -> Self {
        view.layer.shadowColor = shadowColor
        return self
    }
    
    @discardableResult
    public func shadowOffset(_ shadowOffset: CGSize) -> Self {
        view.layer.shadowOffset = shadowOffset
        return self
    }
    
    @discardableResult
    public func shadowRadius(_ shadowRadius: CGFloat) -> Self {
        view.layer.shadowRadius = shadowRadius
        return self
    }
    
    @discardableResult
    public func shadowOpacity(_ shadowOpacity: Float) -> Self {
        view.layer.shadowOpacity = shadowOpacity
        return self
    }
    
    @discardableResult
    public func alpha(_ alpha: CGFloat) -> Self {
        view.alpha = alpha
        return self
    }
    
    @discardableResult
    public func isOpaque(_ isOpaque: Bool) -> Self {
        view.isOpaque = isOpaque
        return self
    }
    
    public func build() -> T {
        return view
    }
    
}

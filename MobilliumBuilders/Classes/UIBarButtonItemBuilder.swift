//
//  UIBarButtonBuilder.swift
//  MobilliumBuilders
//
//  Created by Murat Celebi on 12.04.2021.
//

import UIKit

public class UIBarButtonItemBuilder<T: UIBarButtonItem> {
    
    public let barButtonItem = T()
    
    public init() {}
    
    @discardableResult
    public func title(_ title: String?) -> Self {
        self.barButtonItem.title = title
        return self
    }
    
    @discardableResult
    public func image(_ image: UIImage?) -> Self {
        self.barButtonItem.image = image
        return self
    }
    
    @discardableResult
    public func imageInsets(_ imageInsets: UIEdgeInsets) -> Self {
        self.barButtonItem.imageInsets = imageInsets
        return self
    }
    
    @discardableResult
    public func tintColor(_ tintColor: UIColor) -> Self {
        self.barButtonItem.tintColor = tintColor
        return self
    }
    
    @discardableResult
    public func titleTextAttributes(_ titleTextAttributes: [NSAttributedString.Key : Any]?, for state: UIControl.State) -> Self {
        self.barButtonItem.setTitleTextAttributes(titleTextAttributes, for: state)
        return self
    }
    
    @discardableResult
    public func style(_ style: UIBarButtonItem.Style) -> Self {
        self.barButtonItem.style = style
        return self
    }
    
    @discardableResult
    public func width(_ width: CGFloat) -> Self {
        self.barButtonItem.width = width
        return self
    }
    
    @discardableResult
    public func customView(_ customView: UIView?) -> Self {
        self.barButtonItem.customView = customView
        return self
    }
    
    @discardableResult
    public func action(_ action: Selector?) -> Self {
        self.barButtonItem.action = action
        return self
    }
    
    @discardableResult
    public func target(_ target: AnyObject?) -> Self {
        self.barButtonItem.target = target
        return self
    }
    
    @discardableResult
    public func isEnabled(_ isEnabled: Bool) -> Self {
        self.barButtonItem.isEnabled = isEnabled
        return self
    }
    
    @discardableResult
    public func isAccessibilityElement(_ isAccessibilityElement: Bool) -> Self {
        self.barButtonItem.isAccessibilityElement = isAccessibilityElement
        return self
    }
    
    @discardableResult
    public func accessibilityIdentifier(_ accessibilityIdentifier: String?) -> Self {
        self.barButtonItem.accessibilityIdentifier = accessibilityIdentifier
        return self
    }
    
    public func build() -> T {
        return barButtonItem
    }
    
}

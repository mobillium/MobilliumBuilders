//
//  UISwitchBuilder.swift
//  MobilliumBuilders
//
//  Created by Murat Celebi on 22.03.2021.
//

import UIKit

public class UISwitchBuilder<T: UISwitch> {
    
    public let uiSwitch = T()
    
    public init() {}
    
    @discardableResult
    public func onTintColor(_ onTintColor: UIColor?) -> Self {
        self.uiSwitch.onTintColor = onTintColor
        return self
    }
    
    @discardableResult
    public func thumbTintColor(_ thumbTintColor: UIColor?) -> Self {
        self.uiSwitch.thumbTintColor = thumbTintColor
        return self
    }
    
    @discardableResult
    public func onImage(_ onImage: UIImage?) -> Self {
        self.uiSwitch.onImage = onImage
        return self
    }
    
    @discardableResult
    public func offImage(_ offImage: UIImage?) -> Self {
        self.uiSwitch.offImage = offImage
        return self
    }
    
    @discardableResult
    public func isOn(_ isOn: Bool) -> Self {
        self.uiSwitch.isOn = isOn
        return self
    }
    
    @discardableResult
    public func isEnabled(_ isEnabled: Bool) -> Self {
        self.uiSwitch.isEnabled = isEnabled
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    public func preferredStyle(_ preferredStyle: UISwitch.Style) -> Self {
        self.uiSwitch.preferredStyle = preferredStyle
        return self
    }
    
    @discardableResult
    public func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> Self {
        self.uiSwitch.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }

    @discardableResult
    public func isHidden(_ isHidden: Bool) -> Self {
        self.uiSwitch.isHidden = isHidden
        return self
    }

    @discardableResult
    public func isAccessibilityElement(_ isAccessibilityElement: Bool) -> Self {
        self.uiSwitch.isAccessibilityElement = isAccessibilityElement
        return self
    }

    @discardableResult
    public func accessibilityIdentifier(_ accessibilityIdentifier: String?) -> Self {
        self.uiSwitch.accessibilityIdentifier = accessibilityIdentifier
        return self
    }
    
    public func build() -> T {
        return uiSwitch
    }
}

//
//  UIStackViewBuilder.swift
//  MobilliumBuilders
//
//  Created by Murat Çelebi on 17.03.2021.
//

import UIKit

public class UIStackViewBuilder<T: UIStackView> {
    
    public let stackView = T()
    
    public init() {}
    
    @discardableResult
    public func axis(_ axis: NSLayoutConstraint.Axis) -> Self {
        self.stackView.axis = axis
        return self
    }
    
    @discardableResult
    public func spacing(_ spacing: CGFloat) -> Self {
        self.stackView.spacing = spacing
        return self
    }
    
    @discardableResult
    public func alignment(_ alignment: UIStackView.Alignment) -> Self {
        self.stackView.alignment = alignment
        return self
    }
    
    @discardableResult
    public func distribution(_ distribution: UIStackView.Distribution) -> Self {
        self.stackView.distribution = distribution
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    public func backgroundColor(_ backgroundColor: UIColor) -> Self {
        self.stackView.backgroundColor = backgroundColor
        return self
    }
    
    @discardableResult
    public func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> Self {
        self.stackView.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }

    @discardableResult
    public func isHidden(_ isHidden: Bool) -> Self {
        self.stackView.isHidden = isHidden
        return self
    }

    @discardableResult
    public func isAccessibilityElement(_ isAccessibilityElement: Bool) -> Self {
        self.stackView.isAccessibilityElement = isAccessibilityElement
        return self
    }

    @discardableResult
    public func accessibilityIdentifier(_ accessibilityIdentifier: String?) -> Self {
        self.stackView.accessibilityIdentifier = accessibilityIdentifier
        return self
    }
    
    public func build() -> T {
        return stackView
    }
    
}

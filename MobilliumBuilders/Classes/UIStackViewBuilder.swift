//
//  NSAttributedStringBuilder.swift
//  MobilliumBuilders
//
//  Created by Murat Çelebi on 17.03.2021.
//

import UIKit

public class UIStackViewBuilder<T: UIStackView> {
    
    private let stackView = T()
    
    public init() {}
    
    @discardableResult
    public func axis(_ axis: NSLayoutConstraint.Axis) -> Self {
        stackView.axis = axis
        return self
    }
    
    @discardableResult
    public func spacing(_ spacing: CGFloat) -> Self {
        stackView.spacing = spacing
        return self
    }
    
    @discardableResult
    public func alignment(_ alignment: UIStackView.Alignment) -> Self {
        stackView.alignment = alignment
        return self
    }
    
    @discardableResult
    public func distribution(_ distribution: UIStackView.Distribution) -> Self {
        stackView.distribution = distribution
        return self
    }
    
    public func build() -> T {
        return stackView
    }
    
}

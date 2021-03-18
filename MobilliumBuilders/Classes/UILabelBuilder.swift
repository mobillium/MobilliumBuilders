//
//  UILabelBuilder.swift
//  MobilliumBuilders
//
//  Created by Murat Çelebi on 17.03.2021.
//

import UIKit

public class UILabelBuilder<T: UILabel> {
 
    private let label = T()
    
    public init() {}
    
    @discardableResult
    public func text(_ text: String) -> Self {
        label.text = text
        return self
    }
    
    @discardableResult
    public func textColor(_ textColor: UIColor) -> Self {
        label.textColor = textColor
        return self
    }
    
    @discardableResult
    public func font(_ font: UIFont?) -> Self {
        label.font = font
        return self
    }
    
    @discardableResult
    public func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        label.textAlignment = textAlignment
        return self
    }
    
    @discardableResult
    public func numberOfLines(_ numberOfLines: Int) -> Self {
        label.numberOfLines = numberOfLines
        return self
    }
    
    @discardableResult
    public func attributedText(_ attributedText: NSAttributedString) -> Self {
        label.attributedText = attributedText
        return self
    }
    
    @discardableResult
    public func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> Self {
        label.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        return self
    }
    
    @discardableResult
    public func shadowColor(_ shadowColor: UIColor) -> Self {
        label.shadowColor = shadowColor
        return self
    }
    
    @discardableResult
    public func shadowOffset(_ shadowOffset: CGSize) -> Self {
        label.shadowOffset = shadowOffset
        return self
    }
    
    @discardableResult
    public func highlightedTextColor(_ highlightedTextColor: UIColor) -> Self {
        label.highlightedTextColor = highlightedTextColor
        return self
    }
    
    @discardableResult
    public func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> Self {
        label.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }
    
    @discardableResult
    public func minimumScaleFactor(_ minimumScaleFactor: CGFloat) -> Self {
        label.minimumScaleFactor = minimumScaleFactor
        return self
    }
    
    public func build() -> T {
        return label
    }
    
}

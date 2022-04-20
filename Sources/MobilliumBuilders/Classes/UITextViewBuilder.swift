//
//  UITextViewBuilder.swift
//  MobilliumBuilders
//
//  Created by Murat Celebi on 19.03.2021.
//

import UIKit

public class UITextViewBuilder<T: UITextView> {
    
    public let textView = T()

    public init() {}
    
    @discardableResult
    public func text(_ text: String) -> Self {
        self.textView.text = text
        return self
    }
    
    @discardableResult
    public func font(_ font: UIFont?) -> Self {
        self.textView.font = font
        return self
    }
    
    @discardableResult
    public func textColor(_ textColor: UIColor?) -> Self {
        self.textView.textColor = textColor
        return self
    }
    
    @discardableResult
    public func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        self.textView.textAlignment = textAlignment
        return self
    }
    
    @discardableResult
    public func backgroundColor(_ backgroundColor: UIColor) -> Self {
        self.textView.backgroundColor = backgroundColor
        return self
    }
    
    @discardableResult
    public func isEditable(_ isEditable: Bool) -> Self {
        self.textView.isEditable = isEditable
        return self
    }
    
    @discardableResult
    public func isSelectable(_ isSelectable: Bool) -> Self {
        self.textView.isSelectable = isSelectable
        return self
    }
    
    @discardableResult
    public func attributedText(_ attributedText: NSAttributedString) -> Self {
        self.textView.attributedText = attributedText
        return self
    }
    
    @discardableResult
    public func inputView(_ inputView: UIView?) -> Self {
        self.textView.inputView = inputView
        return self
    }
    
    @discardableResult
    public func inputAccessoryView(_ inputAccessoryView: UIView?) -> Self {
        self.textView.inputAccessoryView = inputAccessoryView
        return self
    }
    
    @discardableResult
    public func textContainerInset(_ textContainerInset: UIEdgeInsets) -> Self {
        self.textView.textContainerInset = textContainerInset
        return self
    }
    
    @discardableResult
    public func showsVerticalScrollIndicator(_ showsVerticalScrollIndicator: Bool) -> Self {
        self.textView.showsVerticalScrollIndicator = showsVerticalScrollIndicator
        return self
    }
    
    @discardableResult
    public func isScrollEnabled(_ isScrollEnabled: Bool) -> Self {
        self.textView.isScrollEnabled = isScrollEnabled
        return self
    }
    
    @discardableResult
    public func cornerRadius(_ cornerRadius: CGFloat) -> Self {
        self.textView.layer.cornerRadius = cornerRadius
        return self
    }
    
    @discardableResult
    public func borderColor(_ borderColor: CGColor) -> Self {
        self.textView.layer.borderColor = borderColor
        return self
    }
    
    @discardableResult
    public func borderWidth(_ borderWidth: CGFloat) -> Self {
        self.textView.layer.borderWidth = borderWidth
        return self
    }
    
    @discardableResult
    public func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> Self {
        self.textView.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }
    
    @discardableResult
    public func isHidden(_ isHidden: Bool) -> Self {
        self.textView.isHidden = isHidden
        return self
    }
    
    @discardableResult
    public func isAccessibilityElement(_ isAccessibilityElement: Bool) -> Self {
        self.textView.isAccessibilityElement = isAccessibilityElement
        return self
    }
    
    @discardableResult
    public func accessibilityIdentifier(_ accessibilityIdentifier: String?) -> Self {
        self.textView.accessibilityIdentifier = accessibilityIdentifier
        return self
    }
    
    public func build() -> T {
        return textView
    }
}

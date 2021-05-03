//
//  UITextFieldBuilder.swift
//  UIComponents
//
//  Created by Murat Celebi on 18.03.2021.
//

import UIKit

public class UITextFieldBuilder<T: UITextField> {
    
    public let textField = T()
    
    public init() {}
    
    @discardableResult
    public func text(_ text: String?) -> Self {
        self.textField.text = text
        return self
    }
    
    @discardableResult
    public func textColor(_ textColor: UIColor?) -> Self {
        self.textField.textColor = textColor
        return self
    }
    
    @discardableResult
    public func font(_ font: UIFont?) -> Self {
        self.textField.font = font
        return self
    }
    
    @discardableResult
    public func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        self.textField.textAlignment = textAlignment
        return self
    }
    
    @discardableResult
    public func borderStyle(_ borderStyle: UITextField.BorderStyle) -> Self {
        self.textField.borderStyle = borderStyle
        return self
    }
    
    @discardableResult
    public func placeholder(_ placeholder: String?) -> Self {
        self.textField.placeholder = placeholder
        return self
    }
    
    @discardableResult
    public func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> Self {
        self.textField.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        return self
    }
    
    @discardableResult
    public func minimumFontSize(_ minimumFontSize: CGFloat) -> Self {
        self.textField.minimumFontSize = minimumFontSize
        return self
    }
    
    @discardableResult
    public func borderWidth(_ borderWidth: CGFloat) -> Self {
        self.textField.layer.borderWidth = borderWidth
        return self
    }
    
    @discardableResult
    public func borderColor(_ borderColor: CGColor) -> Self {
        self.textField.layer.borderColor = borderColor
        return self
    }
    
    @discardableResult
    public func cornerRadius(_ cornerRadius: CGFloat) -> Self {
        self.textField.layer.cornerRadius = cornerRadius
        return self
    }
    
    @discardableResult
    public func leftView(_ view: UIView?, viewMode: UITextField.ViewMode) -> Self {
        self.textField.leftView = view
        self.textField.leftViewMode = viewMode
        return self
    }
    
    @discardableResult
    public func rightView(_ view: UIView?, viewMode: UITextField.ViewMode) -> Self {
        self.textField.rightView = view
        self.textField.rightViewMode = viewMode
        return self
    }
    
    @discardableResult
    public func inputView(_ inputView: UIView?) -> Self {
        self.textField.inputView = inputView
        return self
    }
    
    @discardableResult
    public func inputAccessoryView(_ inputAccessoryView: UIView?) -> Self {
        self.textField.inputAccessoryView = inputAccessoryView
        return self
    }
    
    @discardableResult
    public func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> Self {
        self.textField.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }

    @discardableResult
    public func isHidden(_ isHidden: Bool) -> Self {
        self.textField.isHidden = isHidden
        return self
    }

    @discardableResult
    public func isAccessibilityElement(_ isAccessibilityElement: Bool) -> Self {
        self.textField.isAccessibilityElement = isAccessibilityElement
        return self
    }

    @discardableResult
    public func accessibilityIdentifier(_ accessibilityIdentifier: String?) -> Self {
        self.textField.accessibilityIdentifier = accessibilityIdentifier
        return self
    }
    
    @discardableResult
    public func backgroundColor(_ backgroundColor: UIColor) -> Self {
        self.textField.backgroundColor = backgroundColor
        return self
    }
    
    @discardableResult
    public func isSecureTextEntry(_ isSecureTextEntry: Bool) -> Self {
        self.textField.isSecureTextEntry = isSecureTextEntry
        return self
    }
    
    @discardableResult
    public func autocapitalizationType(_ autocapitalizationType: UITextAutocapitalizationType) -> Self {
        self.textField.autocapitalizationType = autocapitalizationType
        return self
    }
    
    public func build() -> T {
        return textField
    }
    
}

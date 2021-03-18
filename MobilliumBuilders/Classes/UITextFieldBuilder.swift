//
//  UITextFieldBuilder.swift
//  UIComponents
//
//  Created by Murat Celebi on 18.03.2021.
//


import UIKit

public class UITextFieldBuilder<T: UITextField> {
    
    private let textField = T()
    
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
    
    public func build() -> T {
        return textField
    }
    
}

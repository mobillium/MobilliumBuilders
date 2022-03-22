//
//  AttributedStringDictionaryBuilder.swift
//  MobilliumBuilders
//
//  Created by Mehmet Salih Aslan on 16.03.2021.
//

import UIKit

public class AttributedStringDictionaryBuilder {
    
    public typealias AttributedStringDictionary = [NSAttributedString.Key: Any]
    public var attributes: AttributedStringDictionary = [:]
    
    public init() {}
    
    @discardableResult
    public func font(_ font: UIFont) -> Self {
        self.attributes[.font] = font
        return self
    }
    
    @discardableResult
    public func paragraphStyle(_ paragraphStyle: NSMutableParagraphStyle) -> Self {
        self.attributes[.paragraphStyle] = paragraphStyle
        return self
    }
    
    @discardableResult
    public func foregroundColor(_ foregroundColor: UIColor) -> Self {
        self.attributes[.foregroundColor] = foregroundColor
        return self
    }
    
    @discardableResult
    public func backgroundColor(_ backgroundColor: UIColor) -> Self {
        self.attributes[.backgroundColor] = backgroundColor
        return self
    }
    
    @discardableResult
    public func kern(_ kern: Int) -> Self {
        self.attributes[.kern] = kern
        return self
    }
    
    @discardableResult
    public func strikethrough(style: NSUnderlineStyle, color: UIColor) -> Self {
        self.strikethroughStyle(style)
        self.strikethroughColor(color)
        return self
    }
    
    @discardableResult
    public func strikethroughStyle(_ strikethroughStyle: NSUnderlineStyle) -> Self {
        self.attributes[.strikethroughStyle] = strikethroughStyle.rawValue
        return self
    }
    
    @discardableResult
    public func strikethroughColor(_ strikethroughColor: UIColor) -> Self {
        self.attributes[.strikethroughColor] = strikethroughColor
        return self
    }
    
    @discardableResult
    public func underline(style: NSUnderlineStyle, color: UIColor) -> Self {
        self.underlineStyle(style)
        self.underlineColor(color)
        return self
    }
    
    @discardableResult
    public func underlineStyle(_ underlineStyle: NSUnderlineStyle) -> Self {
        self.attributes[.underlineStyle] = underlineStyle.rawValue
        return self
    }
    
    @discardableResult
    public func underlineColor(_ underlineColor: UIColor) -> Self {
        self.attributes[.underlineColor] = underlineColor
        return self
    }
    
    @discardableResult
    public func stroke(color: UIColor, width: Int) -> Self {
        self.strokeColor(color)
        self.strokeWidth(width)
        return self
    }
    
    @discardableResult
    public func strokeColor(_ strokeColor: UIColor) -> Self {
        self.attributes[.strokeColor] = strokeColor
        return self
    }
    
    @discardableResult
    public func strokeWidth(_ strokeWidth: Int) -> Self {
        self.attributes[.strokeWidth] = strokeWidth
        return self
    }
    
    @discardableResult
    public func link(_ link: URL) -> Self {
        self.attributes[.link] = link
        return self
    }
    
    public func build() -> AttributedStringDictionary {
        return attributes
    }

}

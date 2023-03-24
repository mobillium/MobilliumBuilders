//
//  MutableParagraphStyleBuilder.swift
//  MobilliumBuilders
//
//  Created by Mehmet Salih Aslan on 15.03.2023.
//

import UIKit

public class MutableParagraphStyleBuilder {
    
    public var mutableParagraphStyle = NSMutableParagraphStyle()
    
    public init() {}
    
    @discardableResult
    public func lineSpacing(_ lineSpacing: CGFloat) -> Self {
        self.mutableParagraphStyle.lineSpacing = lineSpacing
        return self
    }
    
    @discardableResult
    public func paragraphSpacing(_ paragraphSpacing: CGFloat) -> Self {
        self.mutableParagraphStyle.paragraphSpacing = paragraphSpacing
        return self
    }
    
    @discardableResult
    public func alignment(_ alignment: NSTextAlignment) -> Self {
        self.mutableParagraphStyle.alignment = alignment
        return self
    }
    
    @discardableResult
    public func firstLineHeadIndent(_ firstLineHeadIndent: CGFloat) -> Self {
        self.mutableParagraphStyle.firstLineHeadIndent = firstLineHeadIndent
        return self
    }
    
    @discardableResult
    public func headIndent(_ headIndent: CGFloat) -> Self {
        self.mutableParagraphStyle.headIndent = headIndent
        return self
    }
    
    @discardableResult
    public func tailIndent(_ tailIndent: CGFloat) -> Self {
        self.mutableParagraphStyle.tailIndent = tailIndent
        return self
    }
    
    @discardableResult
    public func lineBreakMode(_ lineBreakMode: NSLineBreakMode) -> Self {
        self.mutableParagraphStyle.lineBreakMode = lineBreakMode
        return self
    }
    
    @discardableResult
    public func minimumLineHeight(_ minimumLineHeight: CGFloat) -> Self {
        self.mutableParagraphStyle.minimumLineHeight = minimumLineHeight
        return self
    }
    
    @discardableResult
    public func maximumLineHeight(_ maximumLineHeight: CGFloat) -> Self {
        self.mutableParagraphStyle.maximumLineHeight = maximumLineHeight
        return self
    }
    
    @discardableResult
    public func baseWritingDirection(_ baseWritingDirection: NSWritingDirection) -> Self {
        self.mutableParagraphStyle.baseWritingDirection = baseWritingDirection
        return self
    }
    
    @discardableResult
    public func lineHeightMultiple(_ lineHeightMultiple: CGFloat) -> Self {
        self.mutableParagraphStyle.lineHeightMultiple = lineHeightMultiple
        return self
    }
    
    @discardableResult
    public func paragraphSpacingBefore(_ paragraphSpacingBefore: CGFloat) -> Self {
        self.mutableParagraphStyle.paragraphSpacingBefore = paragraphSpacingBefore
        return self
    }
    
    @discardableResult
    public func hyphenationFactor(_ hyphenationFactor: Float) -> Self {
        self.mutableParagraphStyle.hyphenationFactor = hyphenationFactor
        return self
    }
    
    @discardableResult
    public func tabStops(_ tabStops: [NSTextTab]) -> Self {
        self.mutableParagraphStyle.tabStops = tabStops
        return self
    }
    
    @discardableResult
    public func defaultTabInterval(_ defaultTabInterval: CGFloat) -> Self {
        self.mutableParagraphStyle.defaultTabInterval = defaultTabInterval
        return self
    }
    
    @discardableResult
    public func allowsDefaultTighteningForTruncation(_ allowsDefaultTighteningForTruncation: Bool) -> Self {
        self.mutableParagraphStyle.allowsDefaultTighteningForTruncation = allowsDefaultTighteningForTruncation
        return self
    }
    
    @discardableResult
    public func lineBreakStrategy(_ lineBreakStrategy: NSParagraphStyle.LineBreakStrategy) -> Self {
        self.mutableParagraphStyle.lineBreakStrategy = lineBreakStrategy
        return self
    }
    
    public func build() -> NSMutableParagraphStyle {
        return mutableParagraphStyle
    }
    
}

//
//  UIProgressViewBuilder.swift
//  MobilliumBuilders
//
//  Created by Murat Celebi on 22.03.2021.
//

import UIKit

public class UIProgressViewBuilder<T: UIProgressView> {
    
    public let progressView = T()
    
    public init() {}
    
    @discardableResult
    public func progressViewStyle(_ progressViewStyle: UIProgressView.Style) -> Self {
        self.progressView.progressViewStyle = progressViewStyle
        return self
    }
    
    @discardableResult
    public func progress(_ progress: Float) -> Self {
        self.progressView.progress = progress
        return self
    }
    
    @discardableResult
    public func progressTintColor(_ progressTintColor: UIColor?) -> Self {
        self.progressView.progressTintColor = progressTintColor
        return self
    }
    
    @discardableResult
    public func trackTintColor(_ trackTintColor: UIColor?) -> Self {
        self.progressView.trackTintColor = trackTintColor
        return self
    }
    
    @discardableResult
    public func progressImage(_ progressImage: UIImage?) -> Self {
        self.progressView.progressImage = progressImage
        return self
    }
    
    @discardableResult
    public func trackImage(_ trackImage: UIImage?) -> Self {
        self.progressView.trackImage = trackImage
        return self
    }
    
    @discardableResult
    public func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> Self {
        self.progressView.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }

    @discardableResult
    public func isHidden(_ isHidden: Bool) -> Self {
        self.progressView.isHidden = isHidden
        return self
    }

    @discardableResult
    public func isAccessibilityElement(_ isAccessibilityElement: Bool) -> Self {
        self.progressView.isAccessibilityElement = isAccessibilityElement
        return self
    }

    @discardableResult
    public func accessibilityIdentifier(_ accessibilityIdentifier: String?) -> Self {
        self.progressView.accessibilityIdentifier = accessibilityIdentifier
        return self
    }
    
    public func build() -> T {
        return progressView
    }
    
}

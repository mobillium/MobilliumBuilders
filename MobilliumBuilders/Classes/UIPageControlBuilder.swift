//
//  UIPageControlBuilder.swift
//  MobilliumBuilders
//
//  Created by Murat Celebi on 19.03.2021.
//

import UIKit

public class UIPageControlBuilder<T: UIPageControl> {
    
    public let pageControl = T()
    
    public init() {}
    
    @discardableResult
    public func numberOfPages(_ numberOfPages: Int) -> Self {
        self.pageControl.numberOfPages = numberOfPages
        return self
    }
    
    @discardableResult
    public func hidesForSinglePage(_ hidesForSinglePage: Bool) -> Self {
        self.pageControl.hidesForSinglePage = hidesForSinglePage
        return self
    }
    
    @discardableResult
    public func pageIndicatorTintColor(_ pageIndicatorTintColor: UIColor?) -> Self {
        self.pageControl.pageIndicatorTintColor = pageIndicatorTintColor
        return self
    }
    
    @discardableResult
    public func currentPageIndicatorTintColor(_ currentPageIndicatorTintColor: UIColor?) -> Self {
        self.pageControl.currentPageIndicatorTintColor = currentPageIndicatorTintColor
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    public func backgroundStyle(_ backgroundStyle: UIPageControl.BackgroundStyle) -> Self {
        self.pageControl.backgroundStyle = backgroundStyle
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    public func preferredIndicatorImage(_ preferredIndicatorImage: UIImage?) -> Self {
        self.pageControl.preferredIndicatorImage = preferredIndicatorImage
        return self
    }
    
    @discardableResult
    public func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> Self {
        self.pageControl.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }
    
    @discardableResult
    public func isHidden(_ isHidden: Bool) -> Self {
        self.pageControl.isHidden = isHidden
        return self
    }
    
    @discardableResult
    public func isAccessibilityElement(_ isAccessibilityElement: Bool) -> Self {
        self.pageControl.isAccessibilityElement = isAccessibilityElement
        return self
    }
    
    @discardableResult
    public func accessibilityIdentifier(_ accessibilityIdentifier: String?) -> Self {
        self.pageControl.accessibilityIdentifier = accessibilityIdentifier
        return self
    }
    
    public func build() -> T {
        return pageControl
    }
    
}

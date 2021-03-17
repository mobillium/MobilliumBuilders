//
//  UIScrollViewBuilder.swift
//  MobilliumBuilders
//
//  Created by Murat Çelebi on 17.03.2021.
//  Copyright © 2021 Mobillium. All rights reserved.
//

import UIKit

public class UIScrollViewBuilder<T: UIScrollView> {
    
    private let scrollView = T()
    
    public init() {}
       
    @discardableResult
    public func backgroundColor(_ backgroundColor: UIColor) -> Self {
        scrollView.backgroundColor = backgroundColor
        return self
    }
    
    @discardableResult
    public func showsVerticalScrollIndicator(_ showsVerticalScrollIndicator: Bool) -> Self {
        scrollView.showsVerticalScrollIndicator = showsVerticalScrollIndicator
        return self
    }
    
    @discardableResult
    public func showsHorizontalScrollIndicator(_ showsHorizontalScrollIndicator: Bool) -> Self {
        scrollView.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator
        return self
    }
    
    @discardableResult
    public func contentInset(_ contentInset: UIEdgeInsets) -> Self {
        scrollView.contentInset = contentInset
        return self
    }
    
    @discardableResult
    public func indicatorStyle(_ indicatorStyle: UIScrollView.IndicatorStyle) -> Self {
        scrollView.indicatorStyle = indicatorStyle
        return self
    }
    
    @discardableResult
    public func keyboardDismissMode(_ keyboardDismissMode: UIScrollView.KeyboardDismissMode) -> Self {
        scrollView.keyboardDismissMode = keyboardDismissMode
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    public func contentInsetAdjustmentBehavior(_ contentInsetAdjustmentBehavior: UIScrollView.ContentInsetAdjustmentBehavior) -> Self {
        scrollView.contentInsetAdjustmentBehavior = contentInsetAdjustmentBehavior
        return self
    }
    
    @discardableResult
    public func bounces(_ bounces: Bool) -> Self {
        scrollView.bounces = bounces
        return self
    }
    
    @discardableResult
    public func alwaysBounceVertical(_ alwaysBounceVertical: Bool) -> Self {
        scrollView.alwaysBounceVertical = alwaysBounceVertical
        return self
    }
    
    @discardableResult
    public func alwaysBounceHorizontal(_ alwaysBounceHorizontal: Bool) -> Self {
        scrollView.alwaysBounceHorizontal = alwaysBounceHorizontal
        return self
    }
    
    @discardableResult
    public func isPagingEnabled(_ isPagingEnabled: Bool) -> Self {
        scrollView.isPagingEnabled = isPagingEnabled
        return self
    }
    
    @discardableResult
    public func isScrollEnabled(_ isScrollEnabled: Bool) -> Self {
        scrollView.isScrollEnabled = isScrollEnabled
        return self
    }
    
    public func build() -> T {
        return scrollView
    }
    
}

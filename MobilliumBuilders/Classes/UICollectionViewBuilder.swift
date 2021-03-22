//
//  UICollectionViewBuilder.swift
//  MobilliumBuilders
//
//  Created by Murat Celebi on 19.03.2021.
//

import UIKit

public class UICollectionViewBuilder<T: UICollectionView> {
    
    private let collectionView: T
    
    public init(collectionViewLayout layout: UICollectionViewLayout = UICollectionViewFlowLayout()) {
        self.collectionView = T(frame: .zero, collectionViewLayout: layout)
    }
    
    @discardableResult
    public func backgroundColor(_ backgroundColor: UIColor) -> Self {
        self.collectionView.backgroundColor = backgroundColor
        return self
    }
    
    @discardableResult
    public func scrollDirection(_ scrollDirection: UICollectionView.ScrollDirection) -> Self {
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .vertical
        }
        return self
    }
    
    @discardableResult
    public func estimatedItemSize(_ estimatedItemSize: CGSize) -> Self {
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.estimatedItemSize = estimatedItemSize
        }
        return self
    }
    
    @discardableResult
    public func allowsSelection(_ allowsSelection: Bool) -> Self {
        self.collectionView.allowsSelection = allowsSelection
        return self
    }
    
    @discardableResult
    public func allowsMultipleSelection(_ allowsMultipleSelection: Bool) -> Self {
        self.collectionView.allowsMultipleSelection = allowsMultipleSelection
        return self
    }
    
    @discardableResult
    public func showsVerticalScrollIndicator(_ showsVerticalScrollIndicator: Bool) -> Self {
        self.collectionView.showsVerticalScrollIndicator = showsVerticalScrollIndicator
        return self
    }
    
    @discardableResult
    public func showsHorizontalScrollIndicator(_ showsHorizontalScrollIndicator: Bool) -> Self {
        self.collectionView.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator
        return self
    }
    
    @discardableResult
    public func bounces(_ bounces: Bool) -> Self {
        self.collectionView.bounces = bounces
        return self
    }
    
    @discardableResult
    public func alwaysBounceVertical(_ alwaysBounceVertical: Bool) -> Self {
        self.collectionView.alwaysBounceVertical = alwaysBounceVertical
        return self
    }
    
    @discardableResult
    public func alwaysBounceHorizontal(_ alwaysBounceHorizontal: Bool) -> Self {
        self.collectionView.alwaysBounceHorizontal = alwaysBounceHorizontal
        return self
    }
    
    @discardableResult
    public func isPagingEnabled(_ isPagingEnabled: Bool) -> Self {
        self.collectionView.isPagingEnabled = isPagingEnabled
        return self
    }
    
    @discardableResult
    public func contentInset(_ contentInset: UIEdgeInsets) -> Self {
        self.collectionView.contentInset = contentInset
        return self
    }
    
    @discardableResult
    public func indicatorStyle(_ indicatorStyle: UIScrollView.IndicatorStyle) -> Self {
        self.collectionView.indicatorStyle = indicatorStyle
        return self
    }
    
    @discardableResult
    public func keyboardDismissMode(_ keyboardDismissMode: UIScrollView.KeyboardDismissMode) -> Self {
        self.collectionView.keyboardDismissMode = keyboardDismissMode
        return self
    }
    
    public func build() -> T {
        return collectionView
    }
}
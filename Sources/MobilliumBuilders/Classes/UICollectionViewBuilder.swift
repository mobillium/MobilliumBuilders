//
//  UICollectionViewBuilder.swift
//  MobilliumBuilders
//
//  Created by Murat Celebi on 19.03.2021.
//

import UIKit

public class UICollectionViewBuilder<T: UICollectionView> {
    
    public let collectionView: T
    
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
            layout.scrollDirection = scrollDirection
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
    
    @discardableResult
    public func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> Self {
        self.collectionView.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }
    
    @discardableResult
    public func isHidden(_ isHidden: Bool) -> Self {
        self.collectionView.isHidden = isHidden
        return self
    }
    
    @discardableResult
    public func isAccessibilityElement(_ isAccessibilityElement: Bool) -> Self {
        self.collectionView.isAccessibilityElement = isAccessibilityElement
        return self
    }
    
    @discardableResult
    public func accessibilityIdentifier(_ accessibilityIdentifier: String?) -> Self {
        self.collectionView.accessibilityIdentifier = accessibilityIdentifier
        return self
    }

    @discardableResult
    public func registerCell<C: UICollectionViewCell>(_ cellType: C.Type, reuseIdentifier: String) -> Self {
        self.collectionView.register(cellType, forCellWithReuseIdentifier: reuseIdentifier)
        return self
    }
    
    @discardableResult
    public func cornerRadius(_ cornerRadius: CGFloat) -> Self {
        self.collectionView.layer.cornerRadius = cornerRadius
        return self
    }
    
    @discardableResult
    public func clipsToBounds(_ clipsToBounds: Bool) -> Self {
        self.collectionView.clipsToBounds = clipsToBounds
        return self
    }
    
    @discardableResult
    public func itemSize(_ itemSize: CGSize) -> Self {
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.itemSize = itemSize
        }
        return self
    }
    
    @discardableResult
    public func tintColor(_ tintColor: UIColor) -> Self {
        self.collectionView.tintColor = tintColor
        return self
    }
    
    public func build() -> T {
        return collectionView
    }
}

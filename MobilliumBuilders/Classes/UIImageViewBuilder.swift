//
//  UIImageViewBuilder.swift
//  MobilliumBuilders
//
//  Created by Murat Celebi on 18.03.2021.
//  Copyright © 2021 Mobillium. All rights reserved.
//

import UIKit

public class UIImageViewBuilder<T: UIImageView> {
    
    private let imageView = T()
    
    public init() {}
    
    @discardableResult
    public func image(_ image: UIImage) -> Self {
        imageView.image = image
        return self
    }
    
    @discardableResult
    public func backgroundColor(_ backgroundColor: UIColor) -> Self {
        imageView.backgroundColor = backgroundColor
        return self
    }
    
    @discardableResult
    public func cornerRadius(_ cornerRadius: CGFloat) -> Self {
        imageView.layer.cornerRadius = cornerRadius
        return self
    }
    
    @discardableResult
    public func tintColor(_ tintColor: UIColor) -> Self {
        imageView.tintColor = tintColor
        return self
    }
    
    @discardableResult
    public func clipsToBounds(_ clipsToBounds: Bool) -> Self {
        imageView.clipsToBounds = clipsToBounds
        return self
    }
    
    @discardableResult
    public func masksToBounds(_ masksToBounds: Bool) -> Self {
        imageView.layer.masksToBounds = masksToBounds
        return self
    }
    
    @discardableResult
    public func contentMode(_ contentMode: UIView.ContentMode) -> Self {
        imageView.contentMode = contentMode
        return self
    }

    public func build() -> T {
        return imageView
    }
    
}

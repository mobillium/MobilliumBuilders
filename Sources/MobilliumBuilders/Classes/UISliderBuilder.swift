//
//  UISliderBuilder.swift
//  MobilliumBuilders
//
//  Created by Murat Celebi on 22.03.2021.
//

import UIKit

public class UISliderBuilder<T: UISlider> {
    
    public let slider = T()
    
    public init() {}
    
    @discardableResult
    public func value(_ value: Float) -> Self {
        self.slider.value = value
        return self
    }
    
    @discardableResult
    public func minimumValue(_ minimumValue: Float) -> Self {
        self.slider.minimumValue = minimumValue
        return self
    }
    
    @discardableResult
    public func maximumValue(_ maximumValue: Float) -> Self {
        self.slider.maximumValue = maximumValue
        return self
    }
    
    @discardableResult
    public func minimumValueImage(_ minimumValueImage: UIImage?) -> Self {
        self.slider.minimumValueImage = minimumValueImage
        return self
    }
    
    @discardableResult
    public func maximumValueImage(_ maximumValueImage: UIImage?) -> Self {
        self.slider.maximumValueImage = maximumValueImage
        return self
    }
    
    @discardableResult
    public func isContinuous(_ isContinuous: Bool) -> Self {
        self.slider.isContinuous = isContinuous
        return self
    }
    
    @discardableResult
    public func minimumTrackTintColor(_ minimumTrackTintColor: UIColor?) -> Self {
        self.slider.minimumTrackTintColor = minimumTrackTintColor
        return self
    }
    
    @discardableResult
    public func maximumTrackTintColor(_ maximumTrackTintColor: UIColor?) -> Self {
        self.slider.maximumTrackTintColor = maximumTrackTintColor
        return self
    }
    
    @discardableResult
    public func thumbTintColor(_ thumbTintColor: UIColor?) -> Self {
        self.slider.thumbTintColor = thumbTintColor
        return self
    }
    
    @discardableResult
    public func isEnabled(_ isEnabled: Bool) -> Self {
        self.slider.isEnabled = isEnabled
        return self
    }
    
    @discardableResult
    public func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> Self {
        self.slider.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }

    @discardableResult
    public func isHidden(_ isHidden: Bool) -> Self {
        self.slider.isHidden = isHidden
        return self
    }

    @discardableResult
    public func isAccessibilityElement(_ isAccessibilityElement: Bool) -> Self {
        self.slider.isAccessibilityElement = isAccessibilityElement
        return self
    }

    @discardableResult
    public func accessibilityIdentifier(_ accessibilityIdentifier: String?) -> Self {
        self.slider.accessibilityIdentifier = accessibilityIdentifier
        return self
    }
    
    public func build() -> T {
        return slider
    }
}

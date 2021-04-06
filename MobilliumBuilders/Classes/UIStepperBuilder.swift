//
//  UIStepperBuilder.swift
//  MobilliumBuilders
//
//  Created by Murat Celebi on 23.03.2021.
//

import UIKit

public class UIStepperBuilder<T: UIStepper> {
    
    public let stepper = T()
    
    public init() {}
    
    @discardableResult
    public func isContinuous(_ isContinuous: Bool) -> Self {
        self.stepper.isContinuous = isContinuous
        return self
    }
    
    @discardableResult
    public func autorepeat(_ autorepeat: Bool) -> Self {
        self.stepper.autorepeat = autorepeat
        return self
    }
    
    @discardableResult
    public func wraps(_ wraps: Bool) -> Self {
        self.stepper.wraps = wraps
        return self
    }
    
    @discardableResult
    public func value(_ value: Double) -> Self {
        self.stepper.value = value
        return self
    }
    
    @discardableResult
    public func minimumValue(_ minimumValue: Double) -> Self {
        self.stepper.minimumValue = minimumValue
        return self
    }
    
    @discardableResult
    public func maximumValue(_ maximumValue: Double) -> Self {
        self.stepper.maximumValue = maximumValue
        return self
    }
    
    @discardableResult
    public func stepValue(_ stepValue: Double) -> Self {
        self.stepper.stepValue = stepValue
        return self
    }
    
    @discardableResult
    public func backgroundColor(_ backgroundColor: UIColor) -> Self {
        self.stepper.backgroundColor = backgroundColor
        return self
    }
    
    @discardableResult
    public func backgroundImage(_ backgroundImage: UIImage?, for state: UIControl.State = .normal) -> Self {
        self.stepper.setBackgroundImage(backgroundImage, for: state)
        return self
    }
    
    @discardableResult
    public func dividerImage(_ dividerImage: UIImage?,
                             forLeftSegmentState leftState: UIControl.State = .normal,
                             rightSegmentState rightState: UIControl.State = .normal) -> Self {
        self.stepper.setDividerImage(dividerImage, forLeftSegmentState: leftState, rightSegmentState: rightState)
        return self
    }
    
    @discardableResult
    public func incrementImage(_ incrementImage: UIImage?, for state: UIControl.State = .normal) -> Self {
        self.stepper.setIncrementImage(incrementImage, for: state)
        return self
    }
    
    @discardableResult
    public func decrementImage(_ decrementImage: UIImage?, for state: UIControl.State = .normal) -> Self {
        self.stepper.setDecrementImage(decrementImage, for: state)
        return self
    }
    
    @discardableResult
    public func isEnabled(_ isEnabled: Bool) -> Self {
        self.stepper.isEnabled = isEnabled
        return self
    }
    
    @discardableResult
    public func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> Self {
        self.stepper.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }

    @discardableResult
    public func isHidden(_ isHidden: Bool) -> Self {
        self.stepper.isHidden = isHidden
        return self
    }

    @discardableResult
    public func isAccessibilityElement(_ isAccessibilityElement: Bool) -> Self {
        self.stepper.isAccessibilityElement = isAccessibilityElement
        return self
    }

    @discardableResult
    public func accessibilityIdentifier(_ accessibilityIdentifier: String?) -> Self {
        self.stepper.accessibilityIdentifier = accessibilityIdentifier
        return self
    }
    
    public func build() -> T {
        return stepper
    }
}

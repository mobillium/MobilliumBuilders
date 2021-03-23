//
//  UIStepperBuilderTests.swift
//  MobilliumBuilders_Tests
//
//  Created by Murat Celebi on 23.03.2021.
//  Copyright © 2021 Mobillium. All rights reserved.
//

import XCTest
import MobilliumBuilders

class UIStepperBuilderTests: XCTestCase {

    func testIsContinuous() {
        let stepper = UIStepperBuilder()
            .isContinuous(true)
            .build()
        
        XCTAssertTrue(stepper.isContinuous)
    }

    func testAutorepeat() {
        let stepper = UIStepperBuilder()
            .autorepeat(true)
            .build()
        
        XCTAssertTrue(stepper.autorepeat)
    }
    
    func testWraps() {
        let stepper = UIStepperBuilder()
            .wraps(true)
            .build()
        
        XCTAssertTrue(stepper.wraps)
    }
    
    func testValue() {
        let value: Double = 0.5
        let stepper = UIStepperBuilder()
            .value(value)
            .build()
        
        XCTAssertEqual(stepper.value, value)
    }
    
    func testMinimumValue() {
        let minimumValue: Double = 0.1
        let stepper = UIStepperBuilder()
            .minimumValue(minimumValue)
            .build()
        
        XCTAssertEqual(stepper.minimumValue, minimumValue)
    }
    
    func testMaximumValue() {
        let maximumValue: Double = 0.9
        let stepper = UIStepperBuilder()
            .maximumValue(maximumValue)
            .build()
        
        XCTAssertEqual(stepper.maximumValue, maximumValue)
    }
    
    func testStepValue() {
        let stepValue: Double = 1
        let stepper = UIStepperBuilder()
            .stepValue(stepValue)
            .build()
        
        XCTAssertEqual(stepper.stepValue, stepValue)
    }
    
    func testBackgroundColor() {
        let backgroundColor = UIColor.green
        let stepper = UIStepperBuilder()
            .backgroundColor(backgroundColor)
            .build()
        
        XCTAssertEqual(stepper.backgroundColor, backgroundColor)
    }
    
    func testBackgroundImage() {
        let backgroundImage = UIImage(named: "ic_face")
        let stepper = UIStepperBuilder()
            .backgroundImage(backgroundImage)
            .build()

        XCTAssertTrue(stepper.backgroundImage(for: .normal) == backgroundImage)
    }
    
    func testDividerImage() {
        let dividerImage = UIImage(named: "ic_face")
        let stepper = UIStepperBuilder()
            .dividerImage(dividerImage, forLeftSegmentState: .normal, rightSegmentState: .normal)
            .build()

        XCTAssertTrue(stepper.dividerImage(forLeftSegmentState: .normal, rightSegmentState: .normal) == dividerImage)
    }
    
    func testIsEnabled() {
        let stepper = UIStepperBuilder()
            .isEnabled(true)
            .build()
        
        XCTAssertTrue(stepper.isEnabled)
    }

    func testIsUserInteractionEnabled() {
        let stepper = UIStepperBuilder()
            .isUserInteractionEnabled(true)
            .build()
        
        XCTAssertTrue(stepper.isUserInteractionEnabled)
    }
    
    func testIsHidden() {
        let stepper = UIStepperBuilder()
            .isHidden(true)
            .build()
        
        XCTAssertTrue(stepper.isHidden)
    }
    
    func testIsAccessibilityElement() {
        let stepper = UIStepperBuilder()
            .isAccessibilityElement(true)
            .build()
        
        XCTAssertTrue(stepper.isAccessibilityElement)
    }
    
    func testAccessibilityIdentifier() {
        let accessibilityIdentifier = "stepper"
        let stepper = UIStepperBuilder()
            .accessibilityIdentifier(accessibilityIdentifier)
            .build()
        
        XCTAssertEqual(stepper .accessibilityIdentifier, accessibilityIdentifier)
    }
}

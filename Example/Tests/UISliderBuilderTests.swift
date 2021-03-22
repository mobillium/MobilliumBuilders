//
//  UISliderBuilderTests.swift
//  MobilliumBuilders_Tests
//
//  Created by Murat Celebi on 22.03.2021.
//  Copyright © 2021 Mobillium. All rights reserved.
//

import XCTest
import MobilliumBuilders

class UISliderBuilderTests: XCTestCase {

    func testValue() {
        let value: Float = 0.3
        let slider = UISliderBuilder()
            .value(value)
            .build()
        
        XCTAssertEqual(slider.value, value)
    }
    
    func testMinimumValue() {
        let minimumValue: Float = 0.1
        let slider = UISliderBuilder()
            .minimumValue(minimumValue)
            .build()
        
        XCTAssertEqual(slider.minimumValue, minimumValue)
    }
    
    func testMaximumValue() {
        let maximumValue: Float = 1
        let slider = UISliderBuilder()
            .maximumValue(maximumValue)
            .build()
        
        XCTAssertEqual(slider.maximumValue, maximumValue)
    }
    
    func testMinimumValueImage() {
        let minimumValueImage = UIImage(named: "ic_volume_down")
        let slider = UISliderBuilder()
            .minimumValueImage(minimumValueImage)
            .build()
        
        XCTAssertEqual(slider.minimumValueImage, minimumValueImage)
    }
    
    func testMaximumValueImage() {
        let maximumValueImage = UIImage(named: "ic_volume_up")
        let slider = UISliderBuilder()
            .maximumValueImage(maximumValueImage)
            .build()
        
        XCTAssertEqual(slider.maximumValueImage, maximumValueImage)
    }
    
    func testIsContinuous() {
        let slider = UISliderBuilder()
            .isContinuous(true)
            .build()
        
        XCTAssertTrue(slider.isContinuous)
    }

    func testMinimumTrackTintColor() {
        let minimumTrackTintColor = UIColor.white
        let slider = UISliderBuilder()
            .minimumTrackTintColor(minimumTrackTintColor)
            .build()
        
        XCTAssertEqual(slider.minimumTrackTintColor, minimumTrackTintColor)
    }
    
    func testMaximumTrackTintColor() {
        let maximumTrackTintColor = UIColor.red
        let slider = UISliderBuilder()
            .maximumTrackTintColor(maximumTrackTintColor)
            .build()
        
        XCTAssertEqual(slider.maximumTrackTintColor, maximumTrackTintColor)
    }
    
    func testThumbTintColor() {
        let thumbTintColor = UIColor.blue
        let slider = UISliderBuilder()
            .thumbTintColor(thumbTintColor)
            .build()
        
        XCTAssertEqual(slider.thumbTintColor, thumbTintColor)
    }
    
    func testIsEnabled() {
        let slider = UISliderBuilder()
            .isEnabled(true)
            .build()
        
        XCTAssertTrue(slider.isEnabled)
    }
    
    func testIsUserInteractionEnabled() {
        let slider = UISliderBuilder()
            .isUserInteractionEnabled(true)
            .build()
        
        XCTAssertTrue(slider.isUserInteractionEnabled)
    }

    func testIsHidden() {
        let slider = UISliderBuilder()
            .isHidden(false)
            .build()
        
        XCTAssertFalse(slider.isHidden)
    }

    func testIsAccessibilityElement() {
        let slider = UISliderBuilder()
            .isAccessibilityElement(true)
            .build()
        
        XCTAssertTrue(slider.isAccessibilityElement)
    }

    func testAccessibilityIdentifier() {
        let accessibilityIdentifier = "slider"
        let slider = UISliderBuilder()
            .accessibilityIdentifier(accessibilityIdentifier)
            .build()
        
        XCTAssertEqual(slider.accessibilityIdentifier, accessibilityIdentifier)
    }
}

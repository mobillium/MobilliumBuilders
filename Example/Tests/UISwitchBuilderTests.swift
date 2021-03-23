//
//  UISwitchBuilderTests.swift
//  MobilliumBuilders_Tests
//
//  Created by Murat Celebi on 22.03.2021.
//  Copyright © 2021 Mobillium. All rights reserved.
//

import XCTest
import MobilliumBuilders

class UISwitchBuilderTests: XCTestCase {

    func testOnTintColor() {
        let onTintColor = UIColor.red
        let uiSwitch = UISwitchBuilder()
            .onTintColor(onTintColor)
            .build()
        
        XCTAssertEqual(uiSwitch.onTintColor, onTintColor)
    }
    
    func testThumbTintColor() {
        let thumbTintColor = UIColor.red
        let uiSwitch = UISwitchBuilder()
            .thumbTintColor(thumbTintColor)
            .build()
        
        XCTAssertEqual(uiSwitch.thumbTintColor, thumbTintColor)
    }
    
    func testOnImage() {
        let image = UIImage(named: "ic_face")
        let uiSwitch = UISwitchBuilder()
            .onImage(image)
            .build()
        
        XCTAssertEqual(uiSwitch.onImage, image)
    }
    
    func testOffImage() {
        let image = UIImage(named: "ic_face")
        let uiSwitch = UISwitchBuilder()
            .offImage(image)
            .build()
        
        XCTAssertEqual(uiSwitch.offImage, image)
    }
    
    func testIsOn() {
        let uiSwitch = UISwitchBuilder()
            .isOn(true)
            .build()
        
        XCTAssertTrue(uiSwitch.isOn)
    }

    func testIsEnabled() {
        let uiSwitch = UISwitchBuilder()
            .isEnabled(false)
            .build()
        
        XCTAssertFalse(uiSwitch.isEnabled)
    }
    
    func testPreferredStyle() {
        if #available(iOS 14.0, *) {
            let preferredStyle = UISwitch.Style.sliding
            let uiSwitch = UISwitchBuilder()
                .preferredStyle(preferredStyle)
                .build()
            
            XCTAssertEqual(uiSwitch.preferredStyle, preferredStyle)
        } else {
            XCTAssertTrue(true)
        }
    }
    
    func testIsUserInteractionEnabled() {
        let uiSwitch = UISwitchBuilder()
            .isUserInteractionEnabled(true)
            .build()
        
        XCTAssertTrue(uiSwitch.isUserInteractionEnabled)
    }
    
    func testIsHidden() {
        let uiSwitch = UISwitchBuilder()
            .isHidden(true)
            .build()
        
        XCTAssertTrue(uiSwitch.isHidden)
    }
    
    func testIsAccessibilityElement() {
        let uiSwitch = UISwitchBuilder()
            .isAccessibilityElement(true)
            .build()
        
        XCTAssertTrue(uiSwitch.isAccessibilityElement)
    }
    
    func testAccessibilityIdentifier() {
        let accessibilityIdentifier = "switch"
        let uiSwitch = UISwitchBuilder()
            .accessibilityIdentifier(accessibilityIdentifier)
            .build()
        
        XCTAssertEqual(uiSwitch.accessibilityIdentifier, accessibilityIdentifier)
    }
}

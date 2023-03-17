//
//  UIStackViewBuilderTest.swift
//  MobilliumBuilders_Tests
//
//  Created by Murat Celebi on 17.03.2021.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import XCTest
@testable import MobilliumBuilders

class UIStackViewBuilderTests: XCTestCase {

    func testAxis() {
        let stackView = UIStackViewBuilder()
            .axis(.vertical)
            .build()
        
        XCTAssertTrue(stackView.axis == .vertical)
        XCTAssertFalse(stackView.axis == .horizontal)
    }
    
    func testSpacing() {
        let spacing: CGFloat = 10
        let stackView = UIStackViewBuilder()
            .spacing(spacing)
            .build()

        XCTAssertEqual(stackView.spacing, spacing)
        XCTAssertNotEqual(stackView.spacing, 20)
    }
    
    func testAlignment() {
        let alignment = UIStackView.Alignment.center
        let stackView = UIStackViewBuilder()
            .alignment(alignment)
            .build()
        
        XCTAssertTrue(stackView.alignment == alignment)
        XCTAssertFalse(stackView.alignment == .leading)
        XCTAssertFalse(stackView.alignment == .fill)
    }
    
    func testDistribution() {
        let distribution = UIStackView.Distribution.equalSpacing
        let stackView = UIStackViewBuilder()
            .distribution(distribution)
            .build()
        
        XCTAssertTrue(stackView.distribution == distribution)
        XCTAssertFalse(stackView.distribution == .fill)
        XCTAssertFalse(stackView.distribution == .fillProportionally)
    }
    
    func testBackgroundColor() {
        if #available(iOS 14.0, *) {
            let backgroundColor = UIColor.blue
            let stackView = UIStackViewBuilder()
                .backgroundColor(backgroundColor)
                .build()
            
            XCTAssertEqual(stackView.backgroundColor, backgroundColor)
        } else {
            XCTAssertTrue(true)
        }
    }
    
    func testIsUserInteractionEnabled() {
        let stackView = UIStackViewBuilder()
            .isUserInteractionEnabled(true)
            .build()
        
        XCTAssertTrue(stackView.isUserInteractionEnabled)
    }

    func testIsHidden() {
        let stackView = UIStackViewBuilder()
            .isHidden(false)
            .build()
        
        XCTAssertFalse(stackView.isHidden)
    }

    func testIsAccessibilityElement() {
        let stackView = UIStackViewBuilder()
            .isAccessibilityElement(true)
            .build()
        
        XCTAssertTrue(stackView.isAccessibilityElement)
    }

    func testAccessibilityIdentifier() {
        let accessibilityIdentifier = "stackView"
        let stackView = UIStackViewBuilder()
            .accessibilityIdentifier(accessibilityIdentifier)
            .build()
        
        XCTAssertEqual(stackView.accessibilityIdentifier, accessibilityIdentifier)
    }
    
    func testCornerRadius() {
        let cornerRadius: CGFloat = 10
        let stackView = UIStackViewBuilder()
            .cornerRadius(cornerRadius)
            .build()

        XCTAssertEqual(stackView.layer.cornerRadius, cornerRadius)
        XCTAssertNotEqual(stackView.layer.cornerRadius, 20)
    }
    
    func testClipsToBounds() {
        let stackView = UIStackViewBuilder()
            .clipsToBounds(true)
            .build()
        
        XCTAssertTrue(stackView.clipsToBounds)
    }
}

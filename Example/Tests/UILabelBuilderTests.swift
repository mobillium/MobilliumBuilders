//
//  UILabelBuilderTests.swift
//  MobilliumBuilders_Tests
//
//  Created by Murat Celebi on 17.03.2021.
//  Copyright © 2021 Mobillium. All rights reserved.
//

import XCTest
@testable import MobilliumBuilders

class UILabelBuilderTests: XCTestCase {
    
    func testText() {
        let text = "Label"
        let label = UILabelBuilder()
            .text(text)
            .build()
        
        XCTAssertNotNil(label.text)
        XCTAssertEqual(label.text, text)
    }
    
    func testTextColor() {
        let textColor = UIColor.red
        let label = UILabelBuilder()
            .textColor(textColor)
            .build()
        
        XCTAssertEqual(label.textColor, textColor)
    }
    
    func testFont() {
        let font = UIFont.systemFont(ofSize: 12)
        let label = UILabelBuilder()
            .font(font)
            .build()
        
        XCTAssertEqual(label.font, font)
    }
    
    func testTextAlignment() {
        let textAlignment = NSTextAlignment.center
        let label = UILabelBuilder()
            .textAlignment(textAlignment)
            .build()
        
        XCTAssertEqual(label.textAlignment, textAlignment)
    }
    
    func testNumberOfLines() {
        let numberOfLines = 3
        let label = UILabelBuilder()
            .numberOfLines(numberOfLines)
            .build()
        
        XCTAssertEqual(label.numberOfLines, numberOfLines)
    }
    
    func testAttributedText() {
        let attributes = AttributedStringDictionaryBuilder()
            .font(.systemFont(ofSize: 12))
            .build()
        
        let attributedText = NSAttributedString(string: "Label", attributes: attributes)
        
        let label = UILabelBuilder()
            .attributedText(attributedText)
            .build()
        
        XCTAssertEqual(label.attributedText, attributedText)
    }
    
    func testAdjustsFontSizeToFitWidth() {
        let label = UILabelBuilder()
            .adjustsFontSizeToFitWidth(true)
            .build()
        
        XCTAssertTrue(label.adjustsFontSizeToFitWidth)
    }
    
    func testBackgroundColor() {
        let backgroundColor = UIColor.red
        let label = UILabelBuilder()
            .backgroundColor(backgroundColor)
            .build()
        
        XCTAssertEqual(label.backgroundColor, backgroundColor)
    }
    
    func testCornerRadius() {
        let cornerRadius: CGFloat = 10
        let label = UILabelBuilder()
            .cornerRadius(cornerRadius)
            .build()
        
        XCTAssertEqual(label.layer.cornerRadius, cornerRadius)
    }
    
    func testClipsToBounds() {
        let label = UILabelBuilder()
            .clipsToBounds(true)
            .build()
        
        XCTAssertTrue(label.clipsToBounds)
    }
    
    func testMasksToBounds() {
        let label = UILabelBuilder()
            .masksToBounds(true)
            .build()
        
        XCTAssertTrue(label.layer.masksToBounds)
    }
    
    func testBorderColor() {
        let borderColor = UIColor.red.cgColor
        let label = UILabelBuilder()
            .borderColor(borderColor)
            .build()
        
        XCTAssertEqual(label.layer.borderColor, borderColor)
    }
    
    func testBorderWidth() {
        let borderWidth: CGFloat = 3
        let label = UILabelBuilder()
            .borderWidth(borderWidth)
            .build()
        
        XCTAssertEqual(label.layer.borderWidth, borderWidth)
    }
    
    func testShadowRadius() {
        let shadowRadius: CGFloat = 8
        let label = UILabelBuilder()
            .shadowRadius(shadowRadius)
            .build()
        
        XCTAssertEqual(label.layer.shadowRadius, shadowRadius)
    }
    
    func testShadowOpacity() {
        let shadowOpacity: Float = 0.4
        let label = UILabelBuilder()
            .shadowOpacity(shadowOpacity)
            .build()
        
        XCTAssertEqual(label.layer.shadowOpacity, shadowOpacity)
    }
    
    func testShadowColor() {
        let shadowColor = UIColor.gray
        let label = UILabelBuilder()
            .shadowColor(shadowColor)
            .build()
        
        XCTAssertEqual(label.shadowColor, shadowColor)
    }
    
    func testShadowOffset() {
        let shadowOffset = CGSize(width: 3, height: 3)
        let label = UILabelBuilder()
            .shadowOffset(shadowOffset)
            .build()
        
        XCTAssertEqual(label.shadowOffset, shadowOffset)
    }
    
    func testIsUserInteractionEnabled() {
        let label = UILabelBuilder()
            .isUserInteractionEnabled(false)
            .build()
        
        XCTAssertFalse(label.isUserInteractionEnabled)
    }
    
    func testMinimumScaleFactor() {
        let minimumScaleFactor: CGFloat = 0.5
        let label = UILabelBuilder()
            .minimumScaleFactor(minimumScaleFactor)
            .build()
        
        XCTAssertEqual(label.minimumScaleFactor, minimumScaleFactor)
    }
    
    func testIsHidden() {
        let label = UILabelBuilder()
            .isHidden(false)
            .build()
        
        XCTAssertFalse(label.isHidden)
    }
    
    func testIsAccessibilityElement() {
        let label = UILabelBuilder()
            .isAccessibilityElement(true)
            .build()
        
        XCTAssertTrue(label.isAccessibilityElement)
    }
    
    func testAccessibilityIdentifier() {
        let accessibilityIdentifier = "label"
        let label = UILabelBuilder()
            .accessibilityIdentifier(accessibilityIdentifier)
            .build()
        
        XCTAssertEqual(label.accessibilityIdentifier, accessibilityIdentifier)
    }
    
    func testTranslatesAutoresizingMaskIntoConstraints() {
        let label = UILabelBuilder()
            .translatesAutoresizingMaskIntoConstraints(true)
            .build()
        
        XCTAssertTrue(label.translatesAutoresizingMaskIntoConstraints)
    }
    
}

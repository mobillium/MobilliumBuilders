//
//  UILabelBuilderTests.swift
//  MobilliumBuilders_Tests
//
//  Created by Murat Celebi on 17.03.2021.
//  Copyright © 2021 Mobillium. All rights reserved.
//

import XCTest
import MobilliumBuilders

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
    
}

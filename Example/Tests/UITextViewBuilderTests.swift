//
//  UITextViewBuilderTests.swift
//  MobilliumBuilders_Tests
//
//  Created by Murat Celebi on 19.03.2021.
//  Copyright © 2021 Mobillium. All rights reserved.
//

import XCTest
@testable import MobilliumBuilders

class UITextViewBuilderTests: XCTestCase {

    func testText() {
        let text = "textView"
        let textView = UITextViewBuilder()
            .text(text)
            .build()
        
        XCTAssertEqual(textView.text, text)
    }
    
    func testFont() {
        let font = UIFont.systemFont(ofSize: 12)
        let textView = UITextViewBuilder()
            .font(font)
            .build()
        
        XCTAssertEqual(textView.font, font)
    }
    
    func testTextColor() {
        let textColor = UIColor.gray
        let textView = UITextViewBuilder()
            .textColor(textColor)
            .build()
        
        XCTAssertEqual(textView.textColor, textColor)
    }
    
    func testTextAlignment() {
        let textAlignment = NSTextAlignment.center
        let textView = UITextViewBuilder()
            .textAlignment(textAlignment)
            .build()
        
        XCTAssertEqual(textView.textAlignment, textAlignment)
    }
    
    func testBackgroundColor() {
        let backgroundColor = UIColor.red
        let textView = UITextViewBuilder()
            .backgroundColor(backgroundColor)
            .build()
        
        XCTAssertEqual(textView.backgroundColor, backgroundColor)
    }
    
    func testIsEditable() {
        let textView = UITextViewBuilder()
            .isEditable(true)
            .build()
        
        XCTAssertTrue(textView.isEditable)
    }
    
    func testIsSelectable() {
        let textView = UITextViewBuilder()
            .isSelectable(true)
            .build()
        
        XCTAssertTrue(textView.isSelectable)
    }
    
    func testAttributedText() {
        let attributes = AttributedStringDictionaryBuilder()
            .font(.systemFont(ofSize: 12))
            .build()
        
        let attributedText = NSAttributedString(string: "textView", attributes: attributes)
        
        let textView = UITextViewBuilder()
            .attributedText(attributedText)
            .build()
        
        XCTAssertEqual(textView.attributedText, attributedText)
    }
    
    func testInputView() {
        let datePicker = UIDatePicker()
        let textView = UITextViewBuilder()
            .inputView(datePicker)
            .build()
        
        XCTAssertEqual(textView.inputView, datePicker)
    }
    
    func testInputAccessoryView() {
        let toolbar = UIToolbar()
        let textView = UITextViewBuilder()
            .inputAccessoryView(toolbar)
            .build()
        
        XCTAssertEqual(textView.inputAccessoryView, toolbar)
    }
    
    func testTextContainerInset() {
        let textContainerInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        let textView = UITextViewBuilder()
            .textContainerInset(textContainerInset)
            .build()
        
        XCTAssertEqual(textView.textContainerInset, textContainerInset)
    }

    func testShowsVerticalScrollIndicator() {
        let textView = UITextViewBuilder()
            .showsVerticalScrollIndicator(true)
            .build()
        
        XCTAssertTrue(textView.showsVerticalScrollIndicator)
    }
    
    func testIsScrollEnabled() {
        let textView = UITextViewBuilder()
            .isScrollEnabled(false)
            .build()
        
        XCTAssertFalse(textView.isScrollEnabled)
    }
    
    func testCornerRadius() {
        let cornerRadius: CGFloat = 10
        let textView = UITextViewBuilder()
            .cornerRadius(cornerRadius)
            .build()
        
        XCTAssertEqual(textView.layer.cornerRadius, cornerRadius)
    }
    
    func testBorderColor() {
        let borderColor = UIColor.red.cgColor
        let textView = UITextViewBuilder()
            .borderColor(borderColor)
            .build()
        
        XCTAssertEqual(textView.layer.borderColor, borderColor)
    }
    
    func testBorderWidth() {
        let borderWidth: CGFloat = 3
        let textView = UITextViewBuilder()
            .borderWidth(borderWidth)
            .build()
        
        XCTAssertEqual(textView.layer.borderWidth, borderWidth)
    }
    
    func testIsUserInteractionEnabled() {
        let textView = UITextViewBuilder()
            .isUserInteractionEnabled(true)
            .build()
        
        XCTAssertTrue(textView.isUserInteractionEnabled)
    }
    
    func testIsHidden() {
        let textView = UITextViewBuilder()
            .isHidden(false)
            .build()
        
        XCTAssertFalse(textView.isHidden)
    }
    
    func testIsAccessibilityElement() {
        let textView = UITextViewBuilder()
            .isAccessibilityElement(true)
            .build()
        
        XCTAssertTrue(textView.isAccessibilityElement)
    }
    
    func testAccessibilityIdentifier() {
        let accessibilityIdentifier = "textView"
        let textView = UITextViewBuilder()
            .accessibilityIdentifier(accessibilityIdentifier)
            .build()
        
        XCTAssertEqual(textView.accessibilityIdentifier, accessibilityIdentifier)
    }
    
    func testTranslatesAutoresizingMaskIntoConstraints() {
        let textView = UITextViewBuilder()
            .translatesAutoresizingMaskIntoConstraints(true)
            .build()
        
        XCTAssertTrue(textView.translatesAutoresizingMaskIntoConstraints)
    }
}

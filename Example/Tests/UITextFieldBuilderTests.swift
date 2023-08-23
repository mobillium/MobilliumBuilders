//
//  UITextFieldBuilderTests.swift
//  MobilliumBuilders_Tests
//
//  Created by Murat Celebi on 18.03.2021.
//  Copyright © 2021 Mobillium. All rights reserved.
//

import XCTest
@testable import MobilliumBuilders

class UITextFieldBuilderTests: XCTestCase {
    
    func testText() {
        let text = "textfield"
        let textField = UITextFieldBuilder()
            .text(text)
            .build()
        
        XCTAssertNotNil(textField.text)
        XCTAssertEqual(textField.text, text)
    }
    
    func testTextColor() {
        let textColor = UIColor.red
        let textField = UITextFieldBuilder()
            .textColor(textColor)
            .build()
        
        XCTAssertEqual(textField.textColor, textColor)
    }
    
    func testFont() {
        let font = UIFont.systemFont(ofSize: 12)
        let textField = UITextFieldBuilder()
            .font(font)
            .build()
        
        XCTAssertEqual(textField.font, font)
    }
    
    func testTextAlignment() {
        let textAlignment = NSTextAlignment.center
        let textField = UITextFieldBuilder()
            .textAlignment(textAlignment)
            .build()
        
        XCTAssertEqual(textField.textAlignment, textAlignment)
    }
    
    func testBorderStyle() {
        let borderStyle = UITextField.BorderStyle.roundedRect
        let textField = UITextFieldBuilder()
            .borderStyle(borderStyle)
            .build()
        
        XCTAssertEqual(textField.borderStyle, borderStyle)
    }
    
    func testPlaceholder() {
        let placeholder = "placeholder"
        let textField = UITextFieldBuilder()
            .placeholder(placeholder)
            .build()
        
        XCTAssertNotNil(textField.placeholder)
        XCTAssertEqual(textField.placeholder, placeholder)
    }
    
    func testAdjustsFontSizeToFitWidth() {
        let textField = UITextFieldBuilder()
            .adjustsFontSizeToFitWidth(true)
            .build()
        
        XCTAssertTrue(textField.adjustsFontSizeToFitWidth)
    }
    
    func testMinimumFontSize() {
        let minimumFontSize: CGFloat = 12
        let textField = UITextFieldBuilder()
            .minimumFontSize(minimumFontSize)
            .build()
        
        XCTAssertEqual(textField.minimumFontSize, minimumFontSize)
    }
    
    func testLeftView() {
        let image = UIImage(named: "ic_face")
        let imageView = UIImageView(image: image)
        
        let textField = UITextFieldBuilder()
            .leftView(imageView, viewMode: .always)
            .build()
        
        XCTAssertEqual(textField.leftView, imageView)
        XCTAssertEqual(textField.leftViewMode, .always)
    }
    
    func testRightView() {
        let image = UIImage(named: "ic_face")
        let imageView = UIImageView(image: image)
        
        let textField = UITextFieldBuilder()
            .rightView(imageView, viewMode: .whileEditing)
            .build()
        
        XCTAssertEqual(textField.rightView, imageView)
        XCTAssertEqual(textField.rightViewMode, .whileEditing)
    }
    
    func testInputView() {
        let datePicker = UIDatePicker()
        let textField = UITextFieldBuilder()
            .inputView(datePicker)
            .build()
        
        XCTAssertEqual(textField.inputView, datePicker)
    }
    
    func testInputAccessoryView() {
        let toolbar = UIToolbar()
        let textField = UITextFieldBuilder()
            .inputAccessoryView(toolbar)
            .build()
        
        XCTAssertEqual(textField.inputAccessoryView, toolbar)
    }
    
    func testIsUserInteractionEnabled() {
        let textField = UITextFieldBuilder()
            .isUserInteractionEnabled(true)
            .build()
        
        XCTAssertTrue(textField.isUserInteractionEnabled)
    }
    
    func testIsHidden() {
        let textField = UITextFieldBuilder()
            .isHidden(false)
            .build()
        
        XCTAssertFalse(textField.isHidden)
    }
    
    func testIsAccessibilityElement() {
        let textField = UITextFieldBuilder()
            .isAccessibilityElement(true)
            .build()
        
        XCTAssertTrue(textField.isAccessibilityElement)
    }
    
    func testAccessibilityIdentifier() {
        let accessibilityIdentifier = "textField"
        let textField = UITextFieldBuilder()
            .accessibilityIdentifier(accessibilityIdentifier)
            .build()
        
        XCTAssertEqual(textField.accessibilityIdentifier, accessibilityIdentifier)
    }
    
    func testCornerRadius() {
        let cornerRadius: CGFloat = 8
        let textField = UITextFieldBuilder()
            .cornerRadius(cornerRadius)
            .build()
        
        XCTAssertEqual(textField.layer.cornerRadius, cornerRadius)
    }
    
    func testBorderWidth() {
        let borderWidth: CGFloat = 3
        let textField = UITextFieldBuilder()
            .borderWidth(borderWidth)
            .build()
        
        XCTAssertEqual(textField.layer.borderWidth, borderWidth)
    }
    
    func testBorderColor() {
        let borderColor = UIColor.red.cgColor
        let textField = UITextFieldBuilder()
            .borderColor(borderColor)
            .build()
        
        XCTAssertEqual(textField.layer.borderColor, borderColor)
    }
    
    func testBackgroundColor() {
        let backgroundColor = UIColor.white
        let textField = UITextFieldBuilder()
            .backgroundColor(backgroundColor)
            .build()
        
        XCTAssertEqual(textField.backgroundColor, backgroundColor)
    }
    
    func testSecureTextEntry() {
        let isSecureTextEntry = true
        let textField = UITextFieldBuilder()
            .isSecureTextEntry(isSecureTextEntry)
            .build()
        
        XCTAssertEqual(textField.isSecureTextEntry, isSecureTextEntry)
    }
    
    func testAutocapitalizationType() {
        let autocapitalizationType: UITextAutocapitalizationType = .none
        let textField = UITextFieldBuilder()
            .autocapitalizationType(autocapitalizationType)
            .build()
        
        XCTAssertEqual(textField.autocapitalizationType, autocapitalizationType)
    }
    
    func testTranslatesAutoresizingMaskIntoConstraints() {
        let textField = UITextFieldBuilder()
            .translatesAutoresizingMaskIntoConstraints(true)
            .build()
        
        XCTAssertTrue(textField.translatesAutoresizingMaskIntoConstraints)
    }
}

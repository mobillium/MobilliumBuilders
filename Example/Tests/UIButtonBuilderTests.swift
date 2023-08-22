//
//  UIButtonBuilderTest.swift
//  MobilliumBuilders_Tests
//
//  Created by Murat Celebi on 17.03.2021.
//  Copyright © 2021 Mobillium. All rights reserved.
//

import XCTest
@testable import MobilliumBuilders

class UIButtonBuilderTests: XCTestCase {
    
    func testType() {
        let type = UIButton.ButtonType.infoDark
        let button = UIButtonBuilder(type: type)
            .build()
        
        XCTAssertEqual(button.buttonType, type)
    }
    
    func testBackgroundColor() {
        let backgroundColor = UIColor.red
        let button = UIButtonBuilder()
            .backgroundColor(backgroundColor)
            .build()
        
        XCTAssertEqual(button.backgroundColor, backgroundColor)
    }
    
    func testTintColor() {
        let tintColor = UIColor.blue
        let button = UIButtonBuilder()
            .tintColor(tintColor)
            .build()
        
        XCTAssertEqual(button.tintColor, tintColor)
    }
    
    func testTitle() {
        let title = "button"
        let button = UIButtonBuilder()
            .title(title)
            .build()
        
        XCTAssertEqual(button.titleLabel?.text, title)
    }
    
    func testTitleFont() {
        let titleFont = UIFont.systemFont(ofSize: 12)
        let button = UIButtonBuilder()
            .titleFont(titleFont)
            .build()
        
        XCTAssertEqual(button.titleLabel?.font, titleFont)
    }
    
    func testTitleColor() {
        let titleColor = UIColor.blue
        let button = UIButtonBuilder()
            .titleColor(titleColor)
            .build()
        
        XCTAssertEqual(button.currentTitleColor, titleColor)
    }
    
    func testCornerRadius() {
        let cornerRadius: CGFloat = 8
        let button = UIButtonBuilder()
            .cornerRadius(cornerRadius)
            .build()
        
        XCTAssertEqual(button.layer.cornerRadius, cornerRadius)
    }
    
    func testClipsToBounds() {
        let button = UIButtonBuilder()
            .clipsToBounds(true)
            .build()
        
        XCTAssertTrue(button.clipsToBounds)
    }
    
    func testMasksToBounds() {
        let button = UIButtonBuilder()
            .masksToBounds(true)
            .build()
        
        XCTAssertTrue(button.layer.masksToBounds)
    }
    
    func testBorderColor() {
        let borderColor = UIColor.red.cgColor
        let button = UIButtonBuilder()
            .borderColor(borderColor)
            .build()
        
        XCTAssertEqual(button.layer.borderColor, borderColor)
    }
    
    func testBorderWidth() {
        let borderWidth: CGFloat = 3
        let button = UIButtonBuilder()
            .borderWidth(borderWidth)
            .build()
        
        XCTAssertEqual(button.layer.borderWidth, borderWidth)
    }
    
    func testTitleShadowColor() {
        let titleShadowColor = UIColor.green
        let button = UIButtonBuilder()
            .titleShadowColor(titleShadowColor)
            .build()
        
        XCTAssertEqual(button.currentTitleShadowColor, titleShadowColor)
    }
    
    func testImage() {
        let image = UIImage(named: "ic_face")
        let button = UIButtonBuilder()
            .image(image)
            .build()
        
        XCTAssertEqual(button.currentImage, image)
    }
    
    func testBackgroundImage() {
        let backgroundImage = UIImage(named: "ic_face")
        let button = UIButtonBuilder()
            .backgroundImage(backgroundImage)
            .build()
        
        XCTAssertEqual(button.currentBackgroundImage, backgroundImage)
    }
    
    func testContentEdgeInsets() {
        let contentEdgeInsets = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        let button = UIButtonBuilder()
            .contentEdgeInsets(contentEdgeInsets)
            .build()
        
        XCTAssertEqual(button.contentEdgeInsets, contentEdgeInsets)
        XCTAssertEqual(button.contentEdgeInsets.right, contentEdgeInsets.right)
    }
    
    func testTitleEdgeInsets() {
        let titleEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        let button = UIButtonBuilder()
            .titleEdgeInsets(titleEdgeInsets)
            .build()
        
        XCTAssertEqual(button.titleEdgeInsets, titleEdgeInsets)
        XCTAssertEqual(button.titleEdgeInsets.left, titleEdgeInsets.left)
    }
    
    func testImageEdgeInsets() {
        let imageEdgeInsets = UIEdgeInsets(top: 12, left: 12, bottom: 12, right: 12)
        let button = UIButtonBuilder()
            .imageEdgeInsets(imageEdgeInsets)
            .build()
        
        XCTAssertEqual(button.imageEdgeInsets, imageEdgeInsets)
        XCTAssertEqual(button.imageEdgeInsets.top, imageEdgeInsets.top)
    }
    
    func testShadowColor() {
        let shadowColor = UIColor.systemPink.cgColor
        let button = UIButtonBuilder()
            .shadowColor(shadowColor)
            .build()
        
        XCTAssertEqual(button.layer.shadowColor, shadowColor)
    }
    
    func testShadowOffset() {
        let shadowOffset = CGSize(width: 3, height: 3)
        let button = UIButtonBuilder()
            .shadowOffset(shadowOffset)
            .build()
        
        XCTAssertEqual(button.layer.shadowOffset, shadowOffset)
    }
    
    func testShadowRadius() {
        let shadowRadius: CGFloat = 8
        let button = UIButtonBuilder()
            .shadowRadius(shadowRadius)
            .build()
        
        XCTAssertEqual(button.layer.shadowRadius, shadowRadius)
    }
    
    func testShadowOpacity() {
        let shadowOpacity: Float = 0.4
        let button = UIButtonBuilder()
            .shadowOpacity(shadowOpacity)
            .build()
        
        XCTAssertEqual(button.layer.shadowOpacity, shadowOpacity)
    }
    
    func testIsUserInteractionEnabled() {
        let button = UIButtonBuilder()
            .isUserInteractionEnabled(true)
            .build()
        
        XCTAssertTrue(button.isUserInteractionEnabled)
    }
    
    func testIsHidden() {
        let button = UIButtonBuilder()
            .isHidden(false)
            .build()
        
        XCTAssertFalse(button.isHidden)
    }
    
    func testIsAccessibilityElement() {
        let button = UIButtonBuilder()
            .isAccessibilityElement(true)
            .build()
        
        XCTAssertTrue(button.isAccessibilityElement)
    }
    
    func testAccessibilityIdentifier() {
        let accessibilityIdentifier = "button"
        let button = UIButtonBuilder()
            .accessibilityIdentifier(accessibilityIdentifier)
            .build()
        
        XCTAssertEqual(button.accessibilityIdentifier, accessibilityIdentifier)
    }
    
    func testCustomButton() {
        let font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        let button: CustomButton = UIButtonBuilder(type: .custom)
            .build()
        
        XCTAssertEqual(button.titleLabel?.font, font)
    }
    
    func testTranslatesAutoresizingMaskIntoConstraints() {
        let button = UIButtonBuilder()
            .translatesAutoresizingMaskIntoConstraints(true)
            .build()
        
        XCTAssertTrue(button.translatesAutoresizingMaskIntoConstraints)
    }
}

// MARK: - Custom UIButton
class CustomButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        titleLabel?.font = .systemFont(ofSize: 12, weight: .semibold)
        layer.cornerRadius = 8
        clipsToBounds = true
    }
}

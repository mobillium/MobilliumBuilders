//
//  UIButtonBuilderTest.swift
//  MobilliumBuilders_Tests
//
//  Created by Murat Celebi on 17.03.2021.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import XCTest
import MobilliumBuilders

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
        let font = UIFont.systemFont(ofSize: 12)
        let button = UIButtonBuilder()
            .titleFont(font)
            .build()
        
        XCTAssertEqual(button.titleLabel?.font, font)
    }
    
    func testTitleColor() {
        let color = UIColor.blue
        let button = UIButtonBuilder()
            .titleColor(color)
            .build()
        
        XCTAssertEqual(button.currentTitleColor, color)
    }
    
    func testCornerRadius() {
        let radius: CGFloat = 8
        let button = UIButtonBuilder()
            .cornerRadius(radius)
            .build()
        
        XCTAssertEqual(button.layer.cornerRadius, radius)
    }
    
    func testBorderColor() {
        let color = UIColor.red.cgColor
        let button = UIButtonBuilder()
            .borderColor(color)
            .build()
        
        XCTAssertEqual(button.layer.borderColor, color)
    }
    
    func testBorderWidth() {
        let width: CGFloat = 3
        let button = UIButtonBuilder()
            .borderWidth(width)
            .build()
        
        XCTAssertEqual(button.layer.borderWidth, width)
    }
    
    func testTitleShadowColor() {
        let color = UIColor.green
        let button = UIButtonBuilder()
            .titleShadowColor(color)
            .build()
        
        XCTAssertEqual(button.currentTitleShadowColor, color)
    }
    
    func testImage() {
        let image = UIImage(named: "ic_face")
        let button = UIButtonBuilder()
            .image(image)
            .build()
        
        XCTAssertEqual(button.currentImage, image)
    }
    
    func testBackgroundImage() {
        let image = UIImage(named: "ic_face")
        let button = UIButtonBuilder()
            .backgroundImage(image)
            .build()
        
        XCTAssertEqual(button.currentBackgroundImage, image)
    }
    
    func testContentEdgeInsets() {
        let insets = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        let button = UIButtonBuilder()
            .contentEdgeInsets(insets)
            .build()
        
        XCTAssertEqual(button.contentEdgeInsets, insets)
        XCTAssertEqual(button.contentEdgeInsets.right, 20)
    }
    
    func testTitleEdgeInsets() {
        let insets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        let button = UIButtonBuilder()
            .titleEdgeInsets(insets)
            .build()
        
        XCTAssertEqual(button.titleEdgeInsets, insets)
        XCTAssertEqual(button.titleEdgeInsets.left, insets.left)
    }
    
    func testImageEdgeInsets() {
        let insets = UIEdgeInsets(top: 12, left: 12, bottom: 12, right: 12)
        let button = UIButtonBuilder()
            .imageEdgeInsets(insets)
            .build()
        
        XCTAssertEqual(button.imageEdgeInsets, insets)
        XCTAssertEqual(button.imageEdgeInsets.top, insets.top)
    }
    
    func testShadowColor() {
        let color = UIColor.systemPink.cgColor
        let button = UIButtonBuilder()
            .shadowColor(color)
            .build()
        
        XCTAssertEqual(button.layer.shadowColor, color)
    }
    
    func testShadowOffset() {
        let size = CGSize(width: 3, height: 3)
        let button = UIButtonBuilder()
            .shadowOffset(size)
            .build()
        
        XCTAssertEqual(button.layer.shadowOffset, size)
    }
    
    func testShadowRadius() {
        let radius: CGFloat = 8
        let button = UIButtonBuilder()
            .shadowRadius(radius)
            .build()
        
        XCTAssertEqual(button.layer.shadowRadius, radius)
    }
    
    func testShadowOpacity() {
        let opacity: Float = 0.4
        let button = UIButtonBuilder()
            .shadowOpacity(opacity)
            .build()
        
        XCTAssertEqual(button.layer.shadowOpacity, opacity)
    }
}

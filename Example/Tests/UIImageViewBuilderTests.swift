//
//  UIImageViewBuilder.swift
//  MobilliumBuilders_Tests
//
//  Created by Murat Celebi on 18.03.2021.
//  Copyright © 2021 Mobillium. All rights reserved.
//

import XCTest
import MobilliumBuilders

class UIImageViewBuilderTests: XCTestCase {
    
    func testImage() {
        guard let image = UIImage(named: "ic_face") else { return }
        let imageView = UIImageViewBuilder()
            .image(image)
            .build()
        
        XCTAssertEqual(imageView.image, image)
    }
    
    func testBackgroundColor() {
        let backgroundColor = UIColor.blue
        let imageView = UIImageViewBuilder()
            .backgroundColor(backgroundColor)
            .build()
        
        XCTAssertEqual(imageView.backgroundColor, backgroundColor)
    }
    
    func testCornerRadius() {
        let cornerRadius: CGFloat = 8
        let imageView = UIImageViewBuilder()
            .cornerRadius(cornerRadius)
            .build()
        
        XCTAssertEqual(imageView.layer.cornerRadius, cornerRadius)
    }
    
    func testTintColor() {
        let tintColor = UIColor.blue
        let imageView = UIImageViewBuilder()
            .tintColor(tintColor)
            .build()
        
        XCTAssertEqual(imageView.tintColor, tintColor)
    }
    
    func testClipsToBounds() {
        let imageView = UIImageViewBuilder()
            .clipsToBounds(true)
            .build()
        
        XCTAssertTrue(imageView.clipsToBounds)
    }
    
    func testMasksToBounds() {
        let imageView = UIImageViewBuilder()
            .masksToBounds(false)
            .build()
        
        XCTAssertFalse(imageView.layer.masksToBounds)
    }
    
    func testContentMode() {
        let contentMode = UIView.ContentMode.scaleAspectFit
        let imageView = UIImageViewBuilder()
            .contentMode(contentMode)
            .build()
        
        XCTAssertEqual(imageView.contentMode, contentMode)
    }
    
    func testBorderColor() {
        let borderColor = UIColor.red.cgColor
        let imageView = UIImageViewBuilder()
            .borderColor(borderColor)
            .build()
        
        XCTAssertEqual(imageView.layer.borderColor, borderColor)
    }
    
    func testBorderWidth() {
        let borderWidth: CGFloat = 3
        let imageView = UIImageViewBuilder()
            .borderWidth(borderWidth)
            .build()
        
        XCTAssertEqual(imageView.layer.borderWidth, borderWidth)
    }
    
    func testShadowColor() {
        let shadowColor = UIColor.systemPink.cgColor
        let imageView = UIImageViewBuilder()
            .shadowColor(shadowColor)
            .build()
        
        XCTAssertEqual(imageView.layer.shadowColor, shadowColor)
    }
    
    func testShadowOffset() {
        let shadowOffset = CGSize(width: 3, height: 3)
        let imageView = UIImageViewBuilder()
            .shadowOffset(shadowOffset)
            .build()
        
        XCTAssertEqual(imageView.layer.shadowOffset, shadowOffset)
    }
    
    func testShadowRadius() {
        let shadowRadius: CGFloat = 8
        let imageView = UIImageViewBuilder()
            .shadowRadius(shadowRadius)
            .build()
        
        XCTAssertEqual(imageView.layer.shadowRadius, shadowRadius)
    }
    
    func testShadowOpacity() {
        let shadowOpacity: Float = 0.4
        let imageView = UIImageViewBuilder()
            .shadowOpacity(shadowOpacity)
            .build()
        
        XCTAssertEqual(imageView.layer.shadowOpacity, shadowOpacity)
    }
    
    func testIsUserInteractionEnabled() {
        let imageView = UIImageViewBuilder()
            .isUserInteractionEnabled(true)
            .build()
        
        XCTAssertTrue(imageView.isUserInteractionEnabled)
    }
    
    func testIsHidden() {
        let imageView = UIImageViewBuilder()
            .isHidden(false)
            .build()
        
        XCTAssertFalse(imageView.isHidden)
    }
    
    func testIsAccessibilityElement() {
        let imageView = UIImageViewBuilder()
            .isAccessibilityElement(true)
            .build()
        
        XCTAssertTrue(imageView.isAccessibilityElement)
    }
    
    func testAccessibilityIdentifier() {
        let accessibilityIdentifier = "imageView"
        let imageView = UIImageViewBuilder()
            .accessibilityIdentifier(accessibilityIdentifier)
            .build()
        
        XCTAssertEqual(imageView.accessibilityIdentifier, accessibilityIdentifier)
    }
    
    func testSize() {
        let size: CGSize = .init(width: 10, height: 10)
        let imageView = UIImageViewBuilder()
            .size(size)
            .build()
        
        let widthConstraint = imageView.constraints.filter({ $0.firstAttribute == NSLayoutConstraint.Attribute.width }).first!
        let heightConstraint = imageView.constraints.filter({ $0.firstAttribute == NSLayoutConstraint.Attribute.height }).first!
        XCTAssertEqual(widthConstraint.constant, size.width)
        XCTAssertEqual(heightConstraint.constant, size.height)
    }
    
}

//
//  UIViewBuilderTests.swift
//  MobilliumBuilders_Tests
//
//  Created by Murat Celebi on 18.03.2021.
//  Copyright © 2021 Mobillium. All rights reserved.
//

import XCTest
import MobilliumBuilders

class UIViewBuilderTests: XCTestCase {

    func testBackgroundColor() {
        let backgroundColor = UIColor.red
        let view = UIViewBuilder()
            .backgroundColor(backgroundColor)
            .build()
        
        XCTAssertEqual(view.backgroundColor, backgroundColor)
    }
    
    func testCornerRadius() {
        let cornerRadius: CGFloat = 10
        let view = UIViewBuilder()
            .cornerRadius(cornerRadius)
            .build()
        
        XCTAssertEqual(view.layer.cornerRadius, cornerRadius)
    }
    
    func testClipsToBounds() {
        let view = UIViewBuilder()
            .clipsToBounds(true)
            .build()
        
        XCTAssertTrue(view.clipsToBounds)
    }
    
    func testBorderColor() {
        let borderColor = UIColor.red.cgColor
        let view = UIViewBuilder()
            .borderColor(borderColor)
            .build()
        
        XCTAssertEqual(view.layer.borderColor, borderColor)
    }
    
    func testBorderWidth() {
        let borderWidth: CGFloat = 3
        let view = UIViewBuilder()
            .borderWidth(borderWidth)
            .build()
        
        XCTAssertEqual(view.layer.borderWidth, borderWidth)
    }
    
    func testShadowColor() {
        let shadowColor = UIColor.systemPink.cgColor
        let view = UIViewBuilder()
            .shadowColor(shadowColor)
            .build()
        
        XCTAssertEqual(view.layer.shadowColor, shadowColor)
    }
    
    func testShadowOffset() {
        let shadowOffset = CGSize(width: 3, height: 3)
        let view = UIViewBuilder()
            .shadowOffset(shadowOffset)
            .build()
        
        XCTAssertEqual(view.layer.shadowOffset, shadowOffset)
    }
    
    func testShadowRadius() {
        let shadowRadius: CGFloat = 8
        let view = UIViewBuilder()
            .shadowRadius(shadowRadius)
            .build()
        
        XCTAssertEqual(view.layer.shadowRadius, shadowRadius)
    }
    
    func testShadowOpacity() {
        let shadowOpacity: Float = 0.4
        let view = UIViewBuilder()
            .shadowOpacity(shadowOpacity)
            .build()
        
        XCTAssertEqual(view.layer.shadowOpacity, shadowOpacity)
    }
    
    func testAlpha() {
        let alpha: CGFloat = 1
        let view = UIViewBuilder()
            .alpha(alpha)
            .build()
        
        XCTAssertEqual(view.alpha, alpha)
    }
    
    func testIsOpaque() {
        let view = UIViewBuilder()
            .isOpaque(false)
            .build()
        
        XCTAssertFalse(view.isOpaque)
    }

}

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
}

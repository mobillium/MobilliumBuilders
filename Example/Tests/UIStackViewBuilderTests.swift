//
//  UIStackViewBuilderTest.swift
//  MobilliumBuilders_Tests
//
//  Created by Murat Celebi on 17.03.2021.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import XCTest
import MobilliumBuilders

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
        let backgroundColor = UIColor.red
        let stackView = UIStackViewBuilder()
            .backgroundColor(backgroundColor)
            .build()
        
        XCTAssertEqual(stackView.backgroundColor, backgroundColor)
    }

}

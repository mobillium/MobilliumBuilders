//
//  UIProgressViewBuilderTests.swift
//  MobilliumBuilders_Tests
//
//  Created by Murat Celebi on 22.03.2021.
//  Copyright © 2021 Mobillium. All rights reserved.
//

import XCTest
import MobilliumBuilders

class UIProgressViewBuilderTests: XCTestCase {

    func testProgressViewStyle() {
        let progressViewStyle = UIProgressView.Style.bar
        let progressView = UIProgressViewBuilder()
            .progressViewStyle(progressViewStyle)
            .build()
        
        XCTAssertEqual(progressView.progressViewStyle, progressViewStyle)
    }
    
    func testProgress() {
        let progress: Float = 0.7
        let progressView = UIProgressViewBuilder()
            .progress(progress)
            .build()
        
        XCTAssertEqual(progressView.progress, progress)
    }
    
    func testProgressTintColor() {
        let progressTintColor = UIColor.red
        let progressView = UIProgressViewBuilder()
            .progressTintColor(progressTintColor)
            .build()
        
        XCTAssertEqual(progressView.progressTintColor, progressTintColor)
    }
    
    func testTrackTintColor() {
        let trackTintColor = UIColor.blue
        let progressView = UIProgressViewBuilder()
            .trackTintColor(trackTintColor)
            .build()
        
        XCTAssertEqual(progressView.trackTintColor, trackTintColor)
    }
    
    func testProgressImage() {
        let progressImage = UIImage(named: "ic_face")
        let progressView = UIProgressViewBuilder()
            .progressImage(progressImage)
            .build()
        
        XCTAssertEqual(progressView.progressImage, progressImage)
    }

    func testTrackImage() {
        let trackImage = UIImage(named: "ic_face")
        let progressView = UIProgressViewBuilder()
            .trackImage(trackImage)
            .build()
        
        XCTAssertEqual(progressView.trackImage, trackImage)
    }
    
    func testIsUserInteractionEnabled() {
        let progressView = UIProgressViewBuilder()
            .isUserInteractionEnabled(true)
            .build()
        
        XCTAssertTrue(progressView.isUserInteractionEnabled)
    }

    func testIsHidden() {
        let progressView = UIProgressViewBuilder()
            .isHidden(false)
            .build()
        
        XCTAssertFalse(progressView.isHidden)
    }

    func testIsAccessibilityElement() {
        let progressView = UIProgressViewBuilder()
            .isAccessibilityElement(true)
            .build()
        
        XCTAssertTrue(progressView.isAccessibilityElement)
    }

    func testAccessibilityIdentifier() {
        let accessibilityIdentifier = "progressView"
        let progressView = UIProgressViewBuilder()
            .accessibilityIdentifier(accessibilityIdentifier)
            .build()
        
        XCTAssertEqual(progressView.accessibilityIdentifier, accessibilityIdentifier)
    }
}

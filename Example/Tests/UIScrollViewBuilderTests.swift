//
//  UIScrollViewBuilderTests.swift
//  MobilliumBuilders_Tests
//
//  Created by Murat Celebi on 17.03.2021.
//  Copyright © 2021 Mobillium. All rights reserved.
//

import XCTest
import MobilliumBuilders

class UIScrollViewBuilderTests: XCTestCase {
    
    func testBackgroundColor() {
        let backgroundColor = UIColor.lightGray
        let scrollView = UIScrollViewBuilder()
            .backgroundColor(backgroundColor)
            .build()
        
        XCTAssertEqual(scrollView.backgroundColor, backgroundColor)
    }
    
    func testShowsVerticalScrollIndicator() {
        let scrollView = UIScrollViewBuilder()
            .showsVerticalScrollIndicator(true)
            .build()
        
        XCTAssertTrue(scrollView.showsVerticalScrollIndicator)
    }
    
    func testShowsHorizontalScrollIndicator() {
        let scrollView = UIScrollViewBuilder()
            .showsHorizontalScrollIndicator(false)
            .build()
        
        XCTAssertFalse(scrollView.showsHorizontalScrollIndicator)
    }
    
    func testContentInset() {
        let contentInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        let scrollView = UIScrollViewBuilder()
            .contentInset(contentInset)
            .build()
        
        XCTAssertTrue(scrollView.contentInset == contentInset)
        XCTAssertTrue(scrollView.contentInset.left == contentInset.left)
    }
    
    func testIndicatorStyle() {
        let indicatorStyle = UIScrollView.IndicatorStyle.black
        let scrollView = UIScrollViewBuilder()
            .indicatorStyle(indicatorStyle)
            .build()
        
        XCTAssertTrue(scrollView.indicatorStyle == indicatorStyle)
    }
    
    func testKeyboardDismissMode() {
        let keyboardDismissMode = UIScrollView.KeyboardDismissMode.onDrag
        let scrollView = UIScrollViewBuilder()
            .keyboardDismissMode(keyboardDismissMode)
            .build()
        
        XCTAssertTrue(scrollView.keyboardDismissMode == keyboardDismissMode)
    }
    
    @available(iOS 11.0, *)
    func testContentInsetAdjustmentBehavior() {
        let contentInsetAdjustmentBehavior = UIScrollView.ContentInsetAdjustmentBehavior.automatic
        let scrollView = UIScrollViewBuilder()
            .contentInsetAdjustmentBehavior(contentInsetAdjustmentBehavior)
            .build()
        
        XCTAssertTrue(scrollView.contentInsetAdjustmentBehavior == contentInsetAdjustmentBehavior)
    }
    
    func testBounces() {
        let scrollView = UIScrollViewBuilder()
            .bounces(true)
            .build()
        
        XCTAssertTrue(scrollView.bounces)
    }
    
    func testAlwaysBounceVertical() {
        let scrollView = UIScrollViewBuilder()
            .alwaysBounceVertical(false)
            .build()
        
        XCTAssertFalse(scrollView.alwaysBounceVertical)
    }
    
    func testAlwaysBounceHorizontal() {
        let scrollView = UIScrollViewBuilder()
            .alwaysBounceHorizontal(true)
            .build()
        
        XCTAssertTrue(scrollView.alwaysBounceHorizontal)
    }
    
    func testIsPagingEnabled() {
        let scrollView = UIScrollViewBuilder()
            .isPagingEnabled(false)
            .build()
        
        XCTAssertFalse(scrollView.isPagingEnabled)
    }
    
    func testIsScrollEnabled() {
        let scrollView = UIScrollViewBuilder()
            .isScrollEnabled(true)
            .build()
        
        XCTAssertTrue(scrollView.isScrollEnabled)
    }
    
    func testIsUserInteractionEnabled() {
        let scrollView = UIScrollViewBuilder()
            .isUserInteractionEnabled(true)
            .build()
        
        XCTAssertTrue(scrollView.isUserInteractionEnabled)
    }
    
    func testIsHidden() {
        let scrollView = UIScrollViewBuilder()
            .isHidden(false)
            .build()
        
        XCTAssertFalse(scrollView.isHidden)
    }
    
    func testIsAccessibilityElement() {
        let scrollView = UIScrollViewBuilder()
            .isAccessibilityElement(true)
            .build()
        
        XCTAssertTrue(scrollView.isAccessibilityElement)
    }
    
    func testAccessibilityIdentifier() {
        let accessibilityIdentifier = "scrollView"
        let scrollView = UIScrollViewBuilder()
            .accessibilityIdentifier(accessibilityIdentifier)
            .build()
        
        XCTAssertEqual(scrollView.accessibilityIdentifier, accessibilityIdentifier)
    }
}

//
//  UIPageControlBuilderTests.swift
//  MobilliumBuilders_Tests
//
//  Created by Murat Celebi on 19.03.2021.
//  Copyright © 2021 Mobillium. All rights reserved.
//

import XCTest
import MobilliumBuilders

class UIPageControlBuilderTests: XCTestCase {

    func testNumberOfPages() {
        let numberOfPages = 5
        let pageControl = UIPageControlBuilder()
            .numberOfPages(numberOfPages)
            .build()
        
        XCTAssertEqual(pageControl.numberOfPages, numberOfPages)
    }
    
    func testHidesForSinglePage() {
        let pageControl = UIPageControlBuilder()
            .hidesForSinglePage(true)
            .build()
        
        XCTAssertTrue(pageControl.hidesForSinglePage)
    }
    
    func testPageIndicatorTintColor() {
        let pageIndicatorTintColor = UIColor.red
        let pageControl = UIPageControlBuilder()
            .pageIndicatorTintColor(pageIndicatorTintColor)
            .build()
        
        XCTAssertEqual(pageControl.pageIndicatorTintColor, pageIndicatorTintColor)
    }
    
    func testCurrentPageIndicatorTintColor() {
        let currentPageIndicatorTintColor = UIColor.yellow
        let pageControl = UIPageControlBuilder()
            .currentPageIndicatorTintColor(currentPageIndicatorTintColor)
            .build()
        
        XCTAssertEqual(pageControl.currentPageIndicatorTintColor, currentPageIndicatorTintColor)
    }
    
    func testBackgroundStyle() {
        if #available(iOS 14.0, *) {
            let backgroundStyle = UIPageControl.BackgroundStyle.minimal
            let pageControl = UIPageControlBuilder()
                .backgroundStyle(backgroundStyle)
                .build()
            
            XCTAssertEqual(pageControl.backgroundStyle, backgroundStyle)
        } else {
            XCTAssertTrue(true)
        }        
    }
    
    func testPreferredIndicatorImage() {
         if #available(iOS 14.0, *) {
            let preferredIndicatorImage = UIImage(named: "ic_face")
            let pageControl = UIPageControlBuilder()
                .preferredIndicatorImage(preferredIndicatorImage)
                .build()
            
            XCTAssertEqual(pageControl.preferredIndicatorImage, preferredIndicatorImage)
        } else {
            XCTAssertTrue(true)
        }
    }
    
    func testIsUserInteractionEnabled() {
        let pageControl = UIPageControlBuilder()
            .isUserInteractionEnabled(true)
            .build()
        
        XCTAssertTrue(pageControl.isUserInteractionEnabled)
    }
    
    func testIsHidden() {
        let pageControl = UIPageControlBuilder()
            .isHidden(false)
            .build()
        
        XCTAssertFalse(pageControl.isHidden)
    }
    
    func testIsAccessibilityElement() {
        let pageControl = UIPageControlBuilder()
            .isAccessibilityElement(true)
            .build()
        
        XCTAssertTrue(pageControl.isAccessibilityElement)
    }
    
    func testAccessibilityIdentifier() {
        let accessibilityIdentifier = "pageControl"
        let pageControl = UIPageControlBuilder()
            .accessibilityIdentifier(accessibilityIdentifier)
            .build()
        
        XCTAssertEqual(pageControl.accessibilityIdentifier, accessibilityIdentifier)
    }
    
}

//
//  MutableParagraphStyleBuilderTests.swift
//  MobilliumBuilders_Tests
//
//  Created by Mehmet Salih Aslan on 17.03.2023.
//  Copyright © 2023 Mobillium. All rights reserved.
//

import XCTest
@testable import MobilliumBuilders

final class MutableParagraphStyleBuilderTests: XCTestCase {
    
    func testLineSpacing() {
        let lineSpacing: CGFloat = 50.23
        let paragraphStyle = MutableParagraphStyleBuilder()
            .lineSpacing(lineSpacing)
            .build()
        
        XCTAssertEqual(paragraphStyle.lineSpacing, lineSpacing)
    }
    
    func testParagraphSpacing() {
        let paragraphSpacing: CGFloat = 16.23
        let paragraphStyle = MutableParagraphStyleBuilder()
            .paragraphSpacing(paragraphSpacing)
            .build()
        
        XCTAssertEqual(paragraphStyle.paragraphSpacing, paragraphSpacing)
    }
    
    func testAlignment() {
        let alignment: NSTextAlignment = .right
        let paragraphStyle = MutableParagraphStyleBuilder()
            .alignment(alignment)
            .build()
        
        XCTAssertEqual(paragraphStyle.alignment, alignment)
    }
    
    func testFirstLineHeadIndent() {
        let firstLineHeadIndent: CGFloat = 10.89
        let paragraphStyle = MutableParagraphStyleBuilder()
            .firstLineHeadIndent(firstLineHeadIndent)
            .build()
        
        XCTAssertEqual(paragraphStyle.firstLineHeadIndent, firstLineHeadIndent)
    }
    
    func testHeadIndent() {
        let headIndent: CGFloat = 10.52
        let paragraphStyle = MutableParagraphStyleBuilder()
            .headIndent(headIndent)
            .build()
        
        XCTAssertEqual(paragraphStyle.headIndent, headIndent)
    }
    
    func testTailIndent() {
        let tailIndent: CGFloat = 10.23
        let paragraphStyle = MutableParagraphStyleBuilder()
            .tailIndent(tailIndent)
            .build()
        
        XCTAssertEqual(paragraphStyle.tailIndent, tailIndent)
    }
    
    func testLineBreakMode() {
        let lineBreakMode: NSLineBreakMode = .byCharWrapping
        let paragraphStyle = MutableParagraphStyleBuilder()
            .lineBreakMode(lineBreakMode)
            .build()
        
        XCTAssertEqual(paragraphStyle.lineBreakMode, lineBreakMode)
    }
    
    func testMinimumLineHeight() {
        let minimumLineHeight: CGFloat = 24.02
        let paragraphStyle = MutableParagraphStyleBuilder()
            .minimumLineHeight(minimumLineHeight)
            .build()
        
        XCTAssertEqual(paragraphStyle.minimumLineHeight, minimumLineHeight)
    }
    
    func testMaximumLineHeight() {
        let maximumLineHeight: CGFloat = 32.52
        let paragraphStyle = MutableParagraphStyleBuilder()
            .maximumLineHeight(maximumLineHeight)
            .build()
        
        XCTAssertEqual(paragraphStyle.maximumLineHeight, maximumLineHeight)
    }
    
    func testBaseWritingDirection() {
        let baseWritingDirection: NSWritingDirection = .rightToLeft
        let paragraphStyle = MutableParagraphStyleBuilder()
            .baseWritingDirection(baseWritingDirection)
            .build()
        
        XCTAssertEqual(paragraphStyle.baseWritingDirection, baseWritingDirection)
    }
    
    func testLineHeightMultiple() {
        let lineHeightMultiple: CGFloat = 32.23
        let paragraphStyle = MutableParagraphStyleBuilder()
            .lineHeightMultiple(lineHeightMultiple)
            .build()
        
        XCTAssertEqual(paragraphStyle.lineHeightMultiple, lineHeightMultiple)
    }
    
    func testParagraphSpacingBefore() {
        let paragraphSpacingBefore: CGFloat = 3.43
        let paragraphStyle = MutableParagraphStyleBuilder()
            .paragraphSpacingBefore(paragraphSpacingBefore)
            .build()
        
        XCTAssertEqual(paragraphStyle.paragraphSpacingBefore, paragraphSpacingBefore)
    }
    
    func testHyphenationFactor() {
        let hyphenationFactor: Float = 4.2
        let paragraphStyle = MutableParagraphStyleBuilder()
            .hyphenationFactor(hyphenationFactor)
            .build()
        
        XCTAssertEqual(paragraphStyle.hyphenationFactor, hyphenationFactor)
    }
    
    @available(iOS 15.0, *)
    func testUsesDefaultHyphenation() {
        let usesDefaultHyphenation: Bool = true
        let paragraphStyle = MutableParagraphStyleBuilder()
            .usesDefaultHyphenation(usesDefaultHyphenation)
            .build()
        
        XCTAssertEqual(paragraphStyle.usesDefaultHyphenation, usesDefaultHyphenation)
    }
    
    func testTabStops() {
        let tabStops: [NSTextTab] = [NSTextTab(textAlignment: .left, location: 0)]
        let paragraphStyle = MutableParagraphStyleBuilder()
            .tabStops(tabStops)
            .build()
        
        XCTAssertTrue(!paragraphStyle.tabStops.isEmpty)
        XCTAssertEqual(paragraphStyle.tabStops.count, tabStops.count)
        XCTAssertEqual(paragraphStyle.tabStops, tabStops)
    }
    
    func testDefaultTabInterval() {
        let defaultTabInterval: CGFloat = 23.23
        let paragraphStyle = MutableParagraphStyleBuilder()
            .defaultTabInterval(defaultTabInterval)
            .build()
        
        XCTAssertEqual(paragraphStyle.defaultTabInterval, defaultTabInterval)
    }
    
    func testAllowsDefaultTighteningForTruncation() {
        let allowsDefaultTighteningForTruncation: Bool = true
        let paragraphStyle = MutableParagraphStyleBuilder()
            .allowsDefaultTighteningForTruncation(allowsDefaultTighteningForTruncation)
            .build()
        
        XCTAssertEqual(paragraphStyle.allowsDefaultTighteningForTruncation, allowsDefaultTighteningForTruncation)
    }
    
    func testLineBreakStrategy() {
        let lineBreakStrategy: NSParagraphStyle.LineBreakStrategy = .pushOut
        let paragraphStyle = MutableParagraphStyleBuilder()
            .lineBreakStrategy(lineBreakStrategy)
            .build()
        
        XCTAssertEqual(paragraphStyle.lineBreakStrategy, lineBreakStrategy)
    }
    
    func testTextLists() {
        let textLists: [NSTextList] = [NSTextList(markerFormat: .box, options: 0)]
        let paragraphStyle = MutableParagraphStyleBuilder()
            .textLists(textLists)
            .build()
        
        XCTAssertTrue(!paragraphStyle.textLists.isEmpty)
        XCTAssertEqual(paragraphStyle.textLists.count, textLists.count)
        XCTAssertEqual(paragraphStyle.textLists, textLists)
    }
}

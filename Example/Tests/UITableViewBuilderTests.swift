//
//  UITableViewBuilderTests.swift
//  MobilliumBuilders_Tests
//
//  Created by Murat Celebi on 19.03.2021.
//  Copyright © 2021 Mobillium. All rights reserved.
//

import XCTest
@testable import MobilliumBuilders

class UITableViewBuilderTests: XCTestCase {

    func testBackgroundColor() {
        let backgroundColor = UIColor.blue
        let tableView = UITableViewBuilder()
            .backgroundColor(backgroundColor)
            .build()

        XCTAssertEqual(tableView.backgroundColor, backgroundColor)
    }

    func testRowHeight() {
        let rowHeight: CGFloat = 80
        let tableView = UITableViewBuilder()
            .rowHeight(rowHeight)
            .build()

        XCTAssertEqual(tableView.rowHeight, rowHeight)
    }

    func testSectionHeaderHeight() {
        let sectionHeaderHeight: CGFloat = 200
        let tableView = UITableViewBuilder()
            .sectionHeaderHeight(sectionHeaderHeight)
            .build()

        XCTAssertEqual(tableView.sectionHeaderHeight, sectionHeaderHeight)
    }

    func testSectionFooterHeight() {
        let sectionFooterHeight: CGFloat = 150
        let tableView = UITableViewBuilder()
            .sectionFooterHeight(sectionFooterHeight)
            .build()

        XCTAssertEqual(tableView.sectionFooterHeight, sectionFooterHeight)
    }

    func testEstimatedRowHeight() {
        let estimatedRowHeight: CGFloat = 100
        let tableView = UITableViewBuilder()
            .estimatedRowHeight(estimatedRowHeight)
            .build()

        XCTAssertEqual(tableView.estimatedRowHeight, estimatedRowHeight)
    }

    func testEstimatedSectionHeaderHeight() {
        let estimatedSectionHeaderHeight: CGFloat = 150
        let tableView = UITableViewBuilder()
            .estimatedSectionHeaderHeight(estimatedSectionHeaderHeight)
            .build()

        XCTAssertEqual(tableView.estimatedSectionHeaderHeight, estimatedSectionHeaderHeight)
    }

    func testEstimatedSectionFooterHeight() {
        let estimatedSectionFooterHeight: CGFloat = 150
        let tableView = UITableViewBuilder()
            .estimatedSectionFooterHeight(estimatedSectionFooterHeight)
            .build()

        XCTAssertEqual(tableView.estimatedSectionFooterHeight, estimatedSectionFooterHeight)
    }

    func testSeparatorStyle() {
        let separatorStyle = UITableViewCell.SeparatorStyle.singleLine
        let tableView = UITableViewBuilder()
            .separatorStyle(separatorStyle)
            .build()

        XCTAssertEqual(tableView.separatorStyle, separatorStyle)
    }

    func testSeparatorColor() {
        let separatorColor = UIColor.darkGray
        let tableView = UITableViewBuilder()
            .separatorColor(separatorColor)
            .build()

        XCTAssertEqual(tableView.separatorColor, separatorColor)
    }

    func testSeparatorInset() {
        let separatorInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        let tableView = UITableViewBuilder()
            .separatorInset(separatorInset)
            .build()

        XCTAssertEqual(tableView.separatorInset, separatorInset)
    }

    func testContentInset() {
        let contentInset = UIEdgeInsets(top: 20, left: 0, bottom: 20, right: 0)
        let tableView = UITableViewBuilder()
            .contentInset(contentInset)
            .build()

        XCTAssertEqual(tableView.contentInset, contentInset)
    }

    func testBounces() {
        let tableView = UITableViewBuilder()
            .bounces(true)
            .build()

        XCTAssertTrue(tableView.bounces)
    }

    func testAlwaysBounceVertical() {
        let tableView = UITableViewBuilder()
            .alwaysBounceVertical(false)
            .build()

        XCTAssertFalse(tableView.alwaysBounceVertical)
    }

    func testShowsVerticalScrollIndicator() {
        let tableView = UITableViewBuilder()
            .showsVerticalScrollIndicator(true)
            .build()

        XCTAssertTrue(tableView.showsVerticalScrollIndicator)
    }

    func testKeyboardDismissMode() {
        let keyboardDismissMode = UIScrollView.KeyboardDismissMode.onDrag
        let tableView = UITableViewBuilder()
            .keyboardDismissMode(keyboardDismissMode)
            .build()

        XCTAssertEqual(tableView.keyboardDismissMode, keyboardDismissMode)
    }

    func testIsUserInteractionEnabled() {
        let tableView = UITableViewBuilder()
            .isUserInteractionEnabled(true)
            .build()

        XCTAssertTrue(tableView.isUserInteractionEnabled)
    }

    func testIsHidden() {
        let tableView = UITableViewBuilder()
            .isHidden(false)
            .build()

        XCTAssertFalse(tableView.isHidden)
    }

    func testIsAccessibilityElement() {
        let tableView = UITableViewBuilder()
            .isAccessibilityElement(true)
            .build()

        XCTAssertTrue(tableView.isAccessibilityElement)
    }

    func testAccessibilityIdentifier() {
        let accessibilityIdentifier = "tableView"
        let tableView = UITableViewBuilder()
            .accessibilityIdentifier(accessibilityIdentifier)
            .build()

        XCTAssertEqual(tableView.accessibilityIdentifier, accessibilityIdentifier)
    }
    
    func testStyle() {
        let style: UITableView.Style = .grouped
        let tableView = UITableViewBuilder(style)
            .build()
        
        XCTAssertEqual(tableView.style, style)
    }
  
    func testCellRegistration() {
        let cellIdentifier = "TestTableViewCell"
        let tableView = UITableViewBuilder()
            .registerCell(TestTableViewCell.self, reuseIdentifier: cellIdentifier)
            .build()
        guard let registeredCellClasses = tableView.value(forKey: "_cellClassDict") as? [String: Any] else {
            return XCTFail("Any registered cell not found for this table view!")
        }

        var isContainsIdentifier = false

        for (key, _) in registeredCellClasses {
            if key == cellIdentifier {
                isContainsIdentifier = true
                break
            }
        }
        XCTAssertTrue(isContainsIdentifier)
    }
    
    func testTranslatesAutoresizingMaskIntoConstraints() {
        let tableView = UITableViewBuilder()
            .translatesAutoresizingMaskIntoConstraints(true)
            .build()
        
        XCTAssertTrue(tableView.translatesAutoresizingMaskIntoConstraints)
    }
}

//
//  UICollectionViewBuilderTests.swift
//  MobilliumBuilders_Tests
//
//  Created by Murat Celebi on 19.03.2021.
//  Copyright © 2021 Mobillium. All rights reserved.
//

import XCTest
import MobilliumBuilders

class UICollectionViewBuilderTests: XCTestCase {

    func testBackgroundColor() {
        let backgroundColor = UIColor.lightGray
        let collectionView = UICollectionViewBuilder()
            .backgroundColor(backgroundColor)
            .build()

        XCTAssertEqual(collectionView.backgroundColor, backgroundColor)
    }

    func testScrollDirection() {
        let scrollDirection = UICollectionView.ScrollDirection.vertical
        let collectionView = UICollectionViewBuilder()
            .scrollDirection(scrollDirection)
            .build()

        guard let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout else { return }

        XCTAssertEqual(layout.scrollDirection, scrollDirection)
    }

    func testEstimatedItemSize() {
        let estimatedItemSize: CGSize = .init(width: 100, height: 100)
        let collectionView = UICollectionViewBuilder()
            .estimatedItemSize(estimatedItemSize)
            .build()

        guard let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout else { return }

        XCTAssertEqual(layout.estimatedItemSize, estimatedItemSize)
    }

    func testAllowsSelection() {
        let collectionView = UICollectionViewBuilder()
            .allowsSelection(true)
            .build()

        XCTAssertTrue(collectionView.allowsSelection)
    }

    func testAllowsMultipleSelection() {
        let collectionView = UICollectionViewBuilder()
            .allowsMultipleSelection(false)
            .build()

        XCTAssertFalse(collectionView.allowsMultipleSelection)
    }

    func testShowsVerticalScrollIndicator() {
        let collectionView = UICollectionViewBuilder()
            .showsVerticalScrollIndicator(false)
            .build()

        XCTAssertFalse(collectionView.showsVerticalScrollIndicator)
    }

    func testShowsHorizontalScrollIndicator() {
        let collectionView = UICollectionViewBuilder()
            .showsHorizontalScrollIndicator(true)
            .build()

        XCTAssertTrue(collectionView.showsHorizontalScrollIndicator)
    }

    func testBounces() {
        let collectionView = UICollectionViewBuilder()
            .bounces(true)
            .build()

        XCTAssertTrue(collectionView.bounces)
    }

    func testAlwaysBounceVertical() {
        let collectionView = UICollectionViewBuilder()
            .alwaysBounceVertical(false)
            .build()

        XCTAssertFalse(collectionView.alwaysBounceVertical)
    }

    func testAlwaysBounceHorizontal() {
        let collectionView = UICollectionViewBuilder()
            .alwaysBounceHorizontal(true)
            .build()

        XCTAssertTrue(collectionView.alwaysBounceHorizontal)
    }

    func testIsPagingEnabled() {
        let collectionView = UICollectionViewBuilder()
            .isPagingEnabled(true)
            .build()

        XCTAssertTrue(collectionView.isPagingEnabled)
    }

    func testContentInset() {
        let contentInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        let collectionView = UICollectionViewBuilder()
            .contentInset(contentInset)
            .build()

        XCTAssertEqual(collectionView.contentInset, contentInset)
    }

    func testIndicatorStyle() {
        let indicatorStyle = UIScrollView.IndicatorStyle.white
        let collectionView = UICollectionViewBuilder()
            .indicatorStyle(indicatorStyle)
            .build()

        XCTAssertEqual(collectionView.indicatorStyle, indicatorStyle)
    }

    func testKeyboardDismissMode() {
        let keyboardDismissMode = UIScrollView.KeyboardDismissMode.onDrag
        let collectionView = UICollectionViewBuilder()
            .keyboardDismissMode(keyboardDismissMode)
            .build()

        XCTAssertEqual(collectionView.keyboardDismissMode, keyboardDismissMode)
    }

    func testIsUserInteractionEnabled() {
        let collectionView = UICollectionViewBuilder()
            .isUserInteractionEnabled(true)
            .build()

        XCTAssertTrue(collectionView.isUserInteractionEnabled)
    }

    func testIsHidden() {
        let collectionView = UICollectionViewBuilder()
            .isHidden(false)
            .build()

        XCTAssertFalse(collectionView.isHidden)
    }

    func testIsAccessibilityElement() {
        let collectionView = UICollectionViewBuilder()
            .isAccessibilityElement(true)
            .build()

        XCTAssertTrue(collectionView.isAccessibilityElement)
    }

    func testAccessibilityIdentifier() {
        let accessibilityIdentifier = "collectionView"
        let collectionView = UICollectionViewBuilder()
            .accessibilityIdentifier(accessibilityIdentifier)
            .build()

        XCTAssertEqual(collectionView.accessibilityIdentifier, accessibilityIdentifier)
    }

    func testCellRegistration() {
        let cellIdentifier = "TestCollectionViewCell"
        let collectionView = UICollectionViewBuilder()
            .registerCell(TestCollectionViewCell.self, reuseIdentifier: cellIdentifier)
            .build()

        guard let registeredCellClasses = collectionView.value(forKey: "_cellClassDict") as? [String: Any] else {
            return XCTFail("Any registered cell not found for this collection view!")
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
}

//
//  UIBarButtonItemBuilderTests.swift
//  MobilliumBuilders_Tests
//
//  Created by Murat Celebi on 12.04.2021.
//  Copyright © 2021 Mobillium. All rights reserved.
//

import XCTest
import MobilliumBuilders

class UIBarButtonItemBuilderTests: XCTestCase {
    
    func testTitle() {
        let title = "title"
        let barButtonItem = UIBarButtonItemBuilder()
            .title(title)
            .build()
        
        XCTAssertEqual(barButtonItem.title, title)
    }
    
    func testImage() {
        let image = UIImage(named: "ic_face")
        let barButtonItem = UIBarButtonItemBuilder()
            .image(image)
            .build()
        
        XCTAssertEqual(barButtonItem.image, image)
    }
    
    func testImageInsets() {
        let image = UIImage(named: "ic_face")
        let imageInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        let barButtonItem = UIBarButtonItemBuilder()
            .image(image)
            .imageInsets(imageInsets)
            .build()
        
        XCTAssertEqual(barButtonItem.imageInsets, imageInsets)
    }
    
    func testTintColor() {
        let image = UIImage(named: "ic_face")?.withRenderingMode(.alwaysTemplate)
        let tintColor = UIColor.red
        let barButtonItem = UIBarButtonItemBuilder()
            .image(image)
            .tintColor(tintColor)
            .build()
        
        XCTAssertEqual(barButtonItem.tintColor, tintColor)
    }
    
    func testTitleTextAttributes() {
        let title = "title"
        let font = UIFont.systemFont(ofSize: 11)
        let attributes = AttributedStringDictionaryBuilder()
            .font(font)
            .build()
        
        let barButtonItem = UIBarButtonItemBuilder()
            .title(title)
            .titleTextAttributes(attributes, for: .normal)
            .build()
        
        XCTAssertNotNil(barButtonItem.titleTextAttributes(for: .normal))
    }
    
    func testStyle() {
        let style: UIBarButtonItem.Style = .done
        let barButtonItem = UIBarButtonItemBuilder()
            .style(style)
            .build()
        
        XCTAssertEqual(barButtonItem.style, style)
    }
    
    func testWidth() {
        let width: CGFloat = 15
        let barButtonItem = UIBarButtonItemBuilder()
            .width(width)
            .build()
        
        XCTAssertEqual(barButtonItem.width, width)
    }
    
    func testCustomView() {
        let image = UIImage(named: "ic_face")
        let imageView = UIImageView(image: image)
        
        let barButtonItem = UIBarButtonItemBuilder()
            .customView(imageView)
            .build()
        
        XCTAssertEqual(barButtonItem.customView, imageView)
    }
    
    func testAction() {
        let action = #selector(TestUIBarButtonItemViewController.barButtonItemTapped)
        
        let barButtonItem = UIBarButtonItemBuilder()
            .action(action)
            .build()
        
        XCTAssertEqual(barButtonItem.action, action)
    }
    
    func testTarget() {
        let action = #selector(TestUIBarButtonItemViewController.barButtonItemTapped)
        let target = TestUIBarButtonItemViewController.self
        let barButtonItem = UIBarButtonItemBuilder()
            .action(action)
            .target(target)
            .build()
        
        XCTAssertNotNil(barButtonItem.target)
    }
    
    func testIsEnabled() {
        let barButtonItem = UIBarButtonItemBuilder()
            .isEnabled(true)
            .build()
        
        XCTAssertTrue(barButtonItem.isEnabled)
    }
    
    func testIsAccessibilityElement() {
        let barButtonItem = UIBarButtonItemBuilder()
            .isAccessibilityElement(true)
            .build()
        
        XCTAssertTrue(barButtonItem.isAccessibilityElement)
    }
    
    func testAccessibilityIdentifier() {
        let accessibilityIdentifier = "barButtonItem"
        let barButtonItem = UIBarButtonItemBuilder()
            .accessibilityIdentifier(accessibilityIdentifier)
            .build()
        
        XCTAssertEqual(barButtonItem.accessibilityIdentifier, accessibilityIdentifier)
    }
}


// MARK: - TestUIBarButtonItemViewController
class TestUIBarButtonItemViewController: UIViewController {
    
    @IBAction func barButtonItemTapped() {
        
    }
    
}

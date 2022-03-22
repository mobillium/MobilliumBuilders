# MobilliumBuilders

[![Build Status](https://github.com/mobillium/MobilliumBuilders/workflows/MobilliumBuilders%20CI/badge.svg?branch=master)](https://github.com/mobillium/MobilliumBuilders/actions)
[![Version](https://img.shields.io/cocoapods/v/MobilliumBuilders.svg?style=flat)](https://cocoapods.org/pods/MobilliumBuilders)
[![License](https://img.shields.io/cocoapods/l/MobilliumBuilders.svg?style=flat)](https://cocoapods.org/pods/MobilliumBuilders)
[![Platform](https://img.shields.io/cocoapods/p/MobilliumBuilders.svg?style=flat)](https://cocoapods.org/pods/MobilliumBuilders)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
- iOS 9.0+
- Swift 5.0+

## Installation

MobilliumBuilders is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'MobilliumBuilders'
```
## Usage
MobilliumBuilders comes with these builders.
- AttributedStringDictionaryBuilder
- UIButtonBuilder
- UIImageViewBuilder
- UILabelBuilder
- UIScrollViewBuilder
- UIStackViewBuilder
- UITextFieldBuilder
- UIViewBuilder
- UITableViewBuilder
- UICollectionViewBuilder
- UITextViewBuilder
- UIPageControlBuilder
- UIProgressViewBuilder
- UISwitchBuilder
- UISliderBuilder
- UIStepperBuilder
- UIBarButtonItemBuilder


Example usage:
```swift
import MobilliumBuilders

  let button = UIButtonBuilder()
      .title("button")
      .backgroundColor(UIColor.red)
      .titleColor(UIColor.white)
      .titleFont(.systemFont(ofSize: 12))
      .cornerRadius(8)
      .build()

 let stackView = UIStackViewBuilder()
      .axis(.vertical)
      .spacing(10)
      .alignment(.center)
      .distribution(.fillEqually)
      .build()

 let view = UIViewBuilder()
      .backgroundColor(UIColor.red)
      .build()

```

## License

MobilliumBuilders is available under the MIT license. See the LICENSE file for more info.

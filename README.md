# Awwbar

[![Use Swift](http://img.shields.io/badge/language-swift-orange.svg?style=flat)](https://developer.apple.com/swift)
[![Build for iOS](http://img.shields.io/badge/platform-ios-green.svg?style=flat)](https://developer.apple.com/iphone/index.action)
[![Under MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](http://mit-license.org)

Awesome bended progress bar

## Usage

To create a new Awwbar instance programmatically :

```swift
let progressBar = new Awwbar(frame: view.bounds)
progressBar.barColor = UIColor.blue
progressBar.bgColor = UIColor.gray
progressBar.percent = 45
```

You can also use Awwbar directly from Interface Builder. Drop a UIView and set its class as Awwbar. All options are now updatable in the attribute inspector.

## Installation
### Manually

Add `Awwbar.swift` into your Xcode project.

### Swift Package Manager

This project are NOT actually supporting Swift Package Manager because it is not possible to build for iOS with SPM.

## Licence

This project is under MIT Licence.

# SwiftLayout

A DSL for Auto Layout in Swift

[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

## Installation
### Carthage
To integrate SwiftLayout into your Xcode project using [Carthage](https://github.com/Carthage/Carthage), specify it in your `Cartfile`:

```ogdl
github "zetasq/SwiftLayout"
```

Run `carthage update` to build the framework and drag the built `SwiftLayout.framework` into your Xcode project.

## Usage

Just as you write equations and inequations in mathmatics, in SwiftLayout you do the same!

```swift
let viewA = UIView()
let viewB = UIView()

var savedConstraint: NSLayoutConstraint!

viewA.addSubview(viewB)
viewB.slt.layout {
  $0.top == viewA.slt.top + 5
  $0.centerX == viewA.slt.centerX
  ($0.leading >= viewA.slt.leading).priority(.defaultHigh)
  
  savedConstraint = ($0.bottom <= viewA.slt.bottom - 15).constraint
}
```

## License

SwiftLayout is released under the MIT license. [See LICENSE](https://github.com/zetasq/SwiftLayout/blob/master/LICENSE) for details.

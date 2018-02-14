//
//  LayoutGuide+LayoutAnchorAccessible.swift
//  SwiftLayout
//
//  Created by Zhu Shengqi on 15/02/2018.
//  Copyright © 2018 Zhu Shengqi. All rights reserved.
//

#if os(macOS)
  import AppKit
#elseif os(iOS)
  import UIKit
#endif

extension LayoutGuide: LayoutAnchorAccessible {
  
  public var lastBaselineAnchor: NSLayoutYAxisAnchor {
    fatalError("lastBaselineAnchor is not supported in \(type(of: self))")
  }
  
  public var firstBaselineAnchor: NSLayoutYAxisAnchor {
    fatalError("firstBaselineAnchor is not supported in \(type(of: self))")
  }
  
}

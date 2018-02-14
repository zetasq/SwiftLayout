//
//  LayoutAnchorAccessible.swift
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

public protocol LayoutAnchorAccessible {
  
  var topAnchor: NSLayoutYAxisAnchor { get }
  
  var leftAnchor: NSLayoutXAxisAnchor { get }
  
  var bottomAnchor: NSLayoutYAxisAnchor { get }
  
  var rightAnchor: NSLayoutXAxisAnchor { get }
  
  var leadingAnchor: NSLayoutXAxisAnchor { get }
  
  var trailingAnchor: NSLayoutXAxisAnchor { get }
  
  var widthAnchor: NSLayoutDimension { get }
  
  var heightAnchor: NSLayoutDimension { get }
  
  var centerXAnchor: NSLayoutXAxisAnchor { get }
  
  var centerYAnchor: NSLayoutYAxisAnchor { get }
  
  var lastBaselineAnchor: NSLayoutYAxisAnchor { get }
  
  var firstBaselineAnchor: NSLayoutYAxisAnchor { get }
  
}

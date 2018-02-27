//
//  PlatformNeutralTypes.swift
//  SwiftLayout
//
//  Created by Zhu Shengqi on 27/02/2018.
//  Copyright © 2018 Zhu Shengqi. All rights reserved.
//

#if os(macOS)
  
  import AppKit
  
  public typealias View = NSView
  public typealias LayoutGuide = NSLayoutGuide

#elseif os(iOS)
  
  import UIKit
  
  public typealias View = UIView
  public typealias LayoutGuide = UILayoutGuide

#endif


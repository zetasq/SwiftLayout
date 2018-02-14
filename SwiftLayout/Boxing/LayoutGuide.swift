//
//  LayoutGuide.swift
//  SwiftLayout
//
//  Created by Zhu Shengqi on 15/02/2018.
//  Copyright © 2018 Zhu Shengqi. All rights reserved.
//

#if os(macOS)
  import AppKit
  public typealias LayoutGuide = NSLayoutGuide
#elseif os(iOS)
  import UIKit
  public typealias LayoutGuide = UILayoutGuide
#endif

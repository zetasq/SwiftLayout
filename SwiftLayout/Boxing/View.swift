//
//  View.swift
//  SwiftLayout
//
//  Created by Zhu Shengqi on 14/02/2018.
//  Copyright © 2018 Zhu Shengqi. All rights reserved.
//

#if os(macOS)
  import AppKit
  public typealias View = NSView
#elseif os(iOS)
  import UIKit
  public typealias View = UIView
#endif

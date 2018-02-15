//
//  LayoutStmt.swift
//  SwiftLayout
//
//  Created by Zhu Shengqi on 15/02/2018.
//  Copyright © 2018 Zhu Shengqi. All rights reserved.
//

#if os(macOS)
  import AppKit
  public typealias LayoutPriority = NSLayoutConstraint.Priority
#elseif os(iOS)
  import UIKit
  public typealias LayoutPriority = UILayoutPriority
#endif

public struct LayoutStmt {
  
  public let constraint: NSLayoutConstraint
  
  public func priority(_ priority: LayoutPriority) -> LayoutStmt {
    constraint.priority = priority
    return self
  }
  
}

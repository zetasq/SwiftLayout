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

public final class LayoutStmt {
  
  public let constraint: NSLayoutConstraint
  
  @usableFromInline
  internal var activateWhenInjected = true
  
  @usableFromInline
  internal init(constraint: NSLayoutConstraint) {
    self.constraint = constraint
  }
  
  @discardableResult
  @inlinable
  public func priority(_ priority: LayoutPriority) -> LayoutStmt {
    constraint.priority = priority
    return self
  }
  
  @discardableResult
  @inlinable
  public func activated(_ activated: Bool) -> LayoutStmt {
    activateWhenInjected = activated
    return self
  }
  
}

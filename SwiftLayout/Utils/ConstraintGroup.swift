//
//  ConstraintGroup.swift
//  SwiftLayout
//
//  Created by Zhu Shengqi on 2018/6/26.
//  Copyright © 2018 Zhu Shengqi. All rights reserved.
//

#if os(macOS)
import AppKit
#elseif os(iOS)
import UIKit
#endif

public final class ConstraintGroup {
  
  private var constraints: [NSLayoutConstraint] = []
  
  @usableFromInline
  internal func addConstraint(_ constraint: NSLayoutConstraint) {
    constraints.append(constraint)
  }
  
  public func activate() {
    NSLayoutConstraint.activate(constraints)
  }
  
  public func deactivate() {
    NSLayoutConstraint.deactivate(constraints)
  }
  
}

extension LayoutStmt {
  
  @inlinable
  public func add(to group: ConstraintGroup) {
    group.addConstraint(self.constraint)
  }
  
}

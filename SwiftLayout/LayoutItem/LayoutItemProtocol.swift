//
//  LayoutItemProtocol.swift
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

public protocol LayoutItemProtocol: class {
  
  func _slt_prepareForAutoLayout()
  
  var _slt_superview: View? { get }
  
}

private var _slt_constraintsSetKey: UInt8 = 0

extension LayoutItemProtocol {
  
  private var slt_constraintsSet: NSMutableSet {
    let set: NSMutableSet
    
    if let existing = objc_getAssociatedObject(self, &_slt_constraintsSetKey) as? NSMutableSet {
      set = existing
    } else {
      set = NSMutableSet()
      objc_setAssociatedObject(self, &_slt_constraintsSetKey, set, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
    }
    
    return set
  }
  
  @usableFromInline
  internal var slt_managedConstraints: [NSLayoutConstraint] {
    return self.slt_constraintsSet.allObjects as! [NSLayoutConstraint]
  }
  
  @usableFromInline
  internal func slt_addConstraints(_ constraints: [NSLayoutConstraint]) {
    let set = self.slt_constraintsSet
    for constraint in constraints {
      set.add(constraint)
    }
  }
  
  @usableFromInline
  internal func slt_removeConstraints(_ constraints: [NSLayoutConstraint]) {
    let set = self.slt_constraintsSet
    for constraint in constraints {
      set.remove(constraint)
    }
  }
  
  @usableFromInline
  internal func slt_clearAllConstraints() {
    self.slt_constraintsSet.removeAllObjects()
  }
}

//
//  SLTBox+Layout.swift
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

extension SLTBox where T: LayoutItemProtocol & LayoutAnchorAccessible {
  
  public func layout(_ block: (LayoutContext<T>) -> Void) {
    let currentConstraints = self.boxedObj.slt_managedConstraints
    NSLayoutConstraint.deactivate(currentConstraints)
    self.boxedObj.slt_clearAllConstraints()
    
    let context = LayoutContext(item: self.boxedObj)
    block(context)
    
    let newConstraints = context.generatedConstraints
    NSLayoutConstraint.activate(newConstraints)
    self.boxedObj.slt_addConstraints(newConstraints)
  }
  
}

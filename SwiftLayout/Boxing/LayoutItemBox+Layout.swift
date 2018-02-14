//
//  LayoutItemBox+Layout.swift
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


extension LayoutItemBox {
  
  public func layout(_ block: (LayoutContext<T>) -> Void) {
    let currentConstraints = self.item.slt_managedConstraints
    NSLayoutConstraint.deactivate(currentConstraints)
    self.item.slt_clearAllConstraints()
    
    let context = LayoutContext(item: self.item)
    block(context)
    
    let newConstraints = context.generatedConstraints
    NSLayoutConstraint.activate(newConstraints)
    self.item.slt_addConstraints(newConstraints)
  }
  
}

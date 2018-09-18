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

extension SLTBox where BoxedType: LayoutItemProtocol & LayoutAnchorAccessible {
  
  @inlinable
  public func layout(_ block: (LayoutContext<BoxedType>) -> Void) {
    let managedConstraints = self.boxedObj.slt_managedConstraints
    NSLayoutConstraint.deactivate(managedConstraints)
    self.boxedObj.slt_clearAllConstraints()
    
    let context = LayoutContext(item: self.boxedObj)
    
    block(context)
    
    let statements = context.injectedStatements
    
    let constraintsToActivate = statements.compactMap { $0.activateWhenInjected ? $0.constraint : nil }
    NSLayoutConstraint.activate(constraintsToActivate)
    
    let newManagedConstraints = statements.map { $0.constraint }
    self.boxedObj.slt_addConstraints(newManagedConstraints)
  }
  
}

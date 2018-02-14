//
//  LayoutContext+LayoutExpressionInjectable.swift
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

public protocol LayoutConstraintInjectable: class {
  
  func injectConstraint(_ constraint: NSLayoutConstraint)
  
}

extension LayoutContext: LayoutConstraintInjectable {
  
  public func injectConstraint(_ constraint: NSLayoutConstraint) {
    self.generatedConstraints.append(constraint)
  }
  
}


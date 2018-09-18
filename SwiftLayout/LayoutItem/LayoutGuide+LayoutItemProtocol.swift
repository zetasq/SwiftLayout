//
//  LayoutGuide+LayoutItemProtocol.swift
//  SwiftLayout
//
//  Created by Zhu Shengqi on 15/02/2018.
//  Copyright © 2018 Zhu Shengqi. All rights reserved.
//

import Foundation

extension LayoutGuide: LayoutItemProtocol {
  
  @inlinable
  public func _slt_prepareForAutoLayout() {}
  
  @inlinable
  public var _slt_superview: View? {
    return self.owningView
  }
  
}

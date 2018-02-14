//
//  LayoutItemBox.swift
//  SwiftLayout
//
//  Created by Zhu Shengqi on 15/02/2018.
//  Copyright © 2018 Zhu Shengqi. All rights reserved.
//

import Foundation

public struct LayoutItemBox<T: LayoutItemProtocol & LayoutAnchorAccessible> {
  
  internal let item: T
  
  internal init(_ item: T) {
    self.item = item
  }
  
}

extension LayoutItemProtocol where Self: LayoutAnchorAccessible {
  
  public var slt: LayoutItemBox<Self> {
    return .init(self)
  }
  
}

//
//  SLTBox.swift
//  SwiftLayout
//
//  Created by Zhu Shengqi on 27/02/2018.
//  Copyright © 2018 Zhu Shengqi. All rights reserved.
//

import Foundation

public struct SLTBox<BoxedType> {
  
  internal let boxedObj: BoxedType
  
  internal init(_ boxedObj: BoxedType) {
    self.boxedObj = boxedObj
  }
  
}

extension View {
  
  public var slt: SLTBox<View> {
    return .init(self)
  }
  
}

extension LayoutGuide {
  
  public var slt: SLTBox<LayoutGuide> {
    return .init(self)
  }
  
}

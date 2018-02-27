//
//  SLTBox.swift
//  SwiftLayout
//
//  Created by Zhu Shengqi on 27/02/2018.
//  Copyright © 2018 Zhu Shengqi. All rights reserved.
//

import Foundation

public struct SLTBox<T> {
  
  internal let boxedObj: T
  
  internal init(_ boxedObj: T) {
    self.boxedObj = boxedObj
  }
  
}

public protocol SLTBoxable: class {
  
  associatedtype BoxedType
  
  var slt: SLTBox<BoxedType> { get }
  
}

extension View: SLTBoxable {
  
  public var slt: SLTBox<View> {
    return .init(self)
  }
  
}

extension LayoutGuide: SLTBoxable {
  
  public var slt: SLTBox<LayoutGuide> {
    return .init(self)
  }
  
}

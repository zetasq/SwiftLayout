//
//  SLTBox+AnchorExpr.swift
//  SwiftLayout
//
//  Created by Zhu Shengqi on 15/02/2018.
//  Copyright © 2018 Zhu Shengqi. All rights reserved.
//

import Foundation

extension SLTBox where BoxedType: LayoutAnchorAccessible {
  
  @inlinable
  public var top: YAxisLayoutExpr {
    return .init(anchor: self.boxedObj.topAnchor)
  }
  
  @inlinable
  public var left: XAxisLayoutExpr {
    return .init(anchor: self.boxedObj.leftAnchor)
  }
  
  @inlinable
  public var bottom: YAxisLayoutExpr {
    return .init(anchor: self.boxedObj.bottomAnchor)
  }
  
  @inlinable
  public var right: XAxisLayoutExpr {
    return .init(anchor: self.boxedObj.rightAnchor)
  }
  
  @inlinable
  public var leading: XAxisLayoutExpr {
    return .init(anchor: self.boxedObj.leadingAnchor)
  }
  
  @inlinable
  public var trailing: XAxisLayoutExpr {
    return .init(anchor: self.boxedObj.trailingAnchor)
  }
  
  @inlinable
  public var centerX: XAxisLayoutExpr {
    return .init(anchor: self.boxedObj.centerXAnchor)
  }
  
  @inlinable
  public var centerY: YAxisLayoutExpr {
    return .init(anchor: self.boxedObj.centerYAnchor)
  }
  
  @inlinable
  public var firstBaseline: YAxisLayoutExpr {
    return .init(anchor: self.boxedObj.firstBaselineAnchor)
  }
  
  @inlinable
  public var lastBaseline: YAxisLayoutExpr {
    return .init(anchor: self.boxedObj.lastBaselineAnchor)
  }
  
  @inlinable
  public var width: DimensionLayoutExpr {
    return .init(anchor: self.boxedObj.widthAnchor)
  }
  
  @inlinable
  public var height: DimensionLayoutExpr {
    return .init(anchor: self.boxedObj.heightAnchor)
  }
  
}

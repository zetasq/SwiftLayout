//
//  SLTBox+AnchorExpr.swift
//  SwiftLayout
//
//  Created by Zhu Shengqi on 15/02/2018.
//  Copyright © 2018 Zhu Shengqi. All rights reserved.
//

import Foundation

extension SLTBox where BoxedType: LayoutAnchorAccessible {
  
  public var top: YAxisLayoutExpr {
    return .init(anchor: self.boxedObj.topAnchor)
  }
  
  public var left: XAxisLayoutExpr {
    return .init(anchor: self.boxedObj.leftAnchor)
  }
  
  public var bottom: YAxisLayoutExpr {
    return .init(anchor: self.boxedObj.bottomAnchor)
  }
  
  public var right: XAxisLayoutExpr {
    return .init(anchor: self.boxedObj.rightAnchor)
  }
  
  public var leading: XAxisLayoutExpr {
    return .init(anchor: self.boxedObj.leadingAnchor)
  }
  
  public var trailing: XAxisLayoutExpr {
    return .init(anchor: self.boxedObj.trailingAnchor)
  }
  
  public var centerX: XAxisLayoutExpr {
    return .init(anchor: self.boxedObj.centerXAnchor)
  }
  
  public var centerY: YAxisLayoutExpr {
    return .init(anchor: self.boxedObj.centerYAnchor)
  }
  
  public var firstBaseline: YAxisLayoutExpr {
    return .init(anchor: self.boxedObj.firstBaselineAnchor)
  }
  
  public var lastBaseline: YAxisLayoutExpr {
    return .init(anchor: self.boxedObj.lastBaselineAnchor)
  }
  
  public var width: DimensionLayoutExpr {
    return .init(anchor: self.boxedObj.widthAnchor)
  }
  
  public var height: DimensionLayoutExpr {
    return .init(anchor: self.boxedObj.heightAnchor)
  }
  
}

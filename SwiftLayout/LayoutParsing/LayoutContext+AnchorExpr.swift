//
//  LayoutContext+AnchorExpr.swift
//  SwiftLayout
//
//  Created by Zhu Shengqi on 15/02/2018.
//  Copyright © 2018 Zhu Shengqi. All rights reserved.
//

import Foundation

extension LayoutContext {
  
  @inlinable
  public var top: YAxisLayoutExpr {
    return .init(anchor: self.layoutItem.topAnchor, injectionContext: self)
  }
  
  @inlinable
  public var left: XAxisLayoutExpr {
    return .init(anchor: self.layoutItem.leftAnchor, injectionContext: self)
  }
  
  @inlinable
  public var bottom: YAxisLayoutExpr {
    return .init(anchor: self.layoutItem.bottomAnchor, injectionContext: self)
  }
  
  @inlinable
  public var right: XAxisLayoutExpr {
    return .init(anchor: self.layoutItem.rightAnchor, injectionContext: self)
  }
  
  @inlinable
  public var leading: XAxisLayoutExpr {
    return .init(anchor: self.layoutItem.leadingAnchor, injectionContext: self)
  }
  
  @inlinable
  public var trailing: XAxisLayoutExpr {
    return .init(anchor: self.layoutItem.trailingAnchor, injectionContext: self)
  }
  
  @inlinable
  public var centerX: XAxisLayoutExpr {
    return .init(anchor: self.layoutItem.centerXAnchor, injectionContext: self)
  }
  
  @inlinable
  public var centerY: YAxisLayoutExpr {
    return .init(anchor: self.layoutItem.centerYAnchor, injectionContext: self)
  }
  
  @inlinable
  public var firstBaseline: YAxisLayoutExpr {
    return .init(anchor: self.layoutItem.firstBaselineAnchor, injectionContext: self)
  }
  
  @inlinable
  public var lastBaseLine: YAxisLayoutExpr {
    return .init(anchor: self.layoutItem.lastBaselineAnchor, injectionContext: self)
  }
  
  @inlinable
  public var width: DimensionLayoutExpr {
    return .init(anchor: self.layoutItem.widthAnchor, injectionContext: self)
  }
  
  @inlinable
  public var height: DimensionLayoutExpr {
    return .init(anchor: self.layoutItem.heightAnchor, injectionContext: self)
  }
  
}

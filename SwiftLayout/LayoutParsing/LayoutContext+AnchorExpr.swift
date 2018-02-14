//
//  LayoutContext+AnchorExpr.swift
//  SwiftLayout
//
//  Created by Zhu Shengqi on 15/02/2018.
//  Copyright © 2018 Zhu Shengqi. All rights reserved.
//

import Foundation

extension LayoutContext {
  
  public var top: YAxisLayoutExpr {
    return .init(anchor: self.layoutItem.topAnchor, injectionContext: self)
  }
  
  public var left: XAxisLayoutExpr {
    return .init(anchor: self.layoutItem.leftAnchor, injectionContext: self)
  }
  
  public var bottom: YAxisLayoutExpr {
    return .init(anchor: self.layoutItem.bottomAnchor, injectionContext: self)
  }
  
  public var right: XAxisLayoutExpr {
    return .init(anchor: self.layoutItem.rightAnchor, injectionContext: self)
  }
  
  public var leading: XAxisLayoutExpr {
    return .init(anchor: self.layoutItem.leadingAnchor, injectionContext: self)
  }
  
  public var trailing: XAxisLayoutExpr {
    return .init(anchor: self.layoutItem.trailingAnchor, injectionContext: self)
  }
  
  public var centerX: XAxisLayoutExpr {
    return .init(anchor: self.layoutItem.centerXAnchor, injectionContext: self)
  }
  
  public var centerY: YAxisLayoutExpr {
    return .init(anchor: self.layoutItem.centerYAnchor, injectionContext: self)
  }
  
  public var firstBaseline: YAxisLayoutExpr {
    return .init(anchor: self.layoutItem.firstBaselineAnchor, injectionContext: self)
  }
  
  public var lastBaseLine: YAxisLayoutExpr {
    return .init(anchor: self.layoutItem.lastBaselineAnchor, injectionContext: self)
  }
  
  public var width: DimensionLayoutExpr {
    return .init(anchor: self.layoutItem.widthAnchor, injectionContext: self)
  }
  
  public var height: DimensionLayoutExpr {
    return .init(anchor: self.layoutItem.heightAnchor, injectionContext: self)
  }
  
}

//
//  ViewBox+AnchorExpr.swift
//  SwiftLayout
//
//  Created by Zhu Shengqi on 15/02/2018.
//  Copyright © 2018 Zhu Shengqi. All rights reserved.
//

import Foundation

extension LayoutItemBox {
  
  public var top: YAxisLayoutExpr {
    return .init(anchor: self.item.topAnchor)
  }
  
  public var left: XAxisLayoutExpr {
    return .init(anchor: self.item.leftAnchor)
  }
  
  public var bottom: YAxisLayoutExpr {
    return .init(anchor: self.item.bottomAnchor)
  }
  
  public var right: XAxisLayoutExpr {
    return .init(anchor: self.item.rightAnchor)
  }
  
  public var leading: XAxisLayoutExpr {
    return .init(anchor: self.item.leadingAnchor)
  }
  
  public var trailing: XAxisLayoutExpr {
    return .init(anchor: self.item.trailingAnchor)
  }
  
  public var centerX: XAxisLayoutExpr {
    return .init(anchor: self.item.centerXAnchor)
  }
  
  public var centerY: YAxisLayoutExpr {
    return .init(anchor: self.item.centerYAnchor)
  }
  
  public var firstBaseline: YAxisLayoutExpr {
    return .init(anchor: self.item.firstBaselineAnchor)
  }
  
  public var lastBaseline: YAxisLayoutExpr {
    return .init(anchor: self.item.lastBaselineAnchor)
  }
  
  public var width: DimensionLayoutExpr {
    return .init(anchor: self.item.widthAnchor)
  }
  
  public var height: DimensionLayoutExpr {
    return .init(anchor: self.item.heightAnchor)
  }
  
}

//
//  LayoutContext.swift
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

public final class LayoutContext<T: LayoutItemProtocol & LayoutAnchorAccessible> {
  
  // MARK: - Properties
  @usableFromInline
  internal let layoutItem: T
  
  @usableFromInline
  internal var injectedStatements: [LayoutStmt] = []
  
  // MARK: - Init & Deinit
  @usableFromInline
  internal init(item: T) {
    self.layoutItem = item
    item._slt_prepareForAutoLayout()
  }
  
  @inlinable
  public var superview: View {
    guard let itemSuperview = layoutItem._slt_superview else {
      fatalError("Cannot find superview of item: \(layoutItem)")
    }
    return itemSuperview
  }
  
}

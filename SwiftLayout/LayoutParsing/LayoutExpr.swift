//
//  LayoutExpr.swift
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

public struct LayoutExpr<T> {
  
  @usableFromInline
  internal let anchor: T
  
  @usableFromInline
  internal let multiplier: CGFloat
  
  @usableFromInline
  internal let offset: CGFloat
  
  @usableFromInline
  internal let injectionContext: LayoutConstraintInjectable?
  
  @usableFromInline
  internal init(anchor: T, multiplier: CGFloat = 1, offset: CGFloat = 0, injectionContext: LayoutConstraintInjectable? = nil) {
    self.anchor = anchor
    self.multiplier = multiplier
    self.offset = offset
    
    self.injectionContext = injectionContext
  }
  
}

public typealias XAxisLayoutExpr = LayoutExpr<NSLayoutXAxisAnchor>

public typealias YAxisLayoutExpr = LayoutExpr<NSLayoutYAxisAnchor>

public typealias DimensionLayoutExpr = LayoutExpr<NSLayoutDimension>


// MARK: - Multiplication
@inlinable
public func *(_ expr: DimensionLayoutExpr, _ multiplier: CGFloat) -> DimensionLayoutExpr {
  return DimensionLayoutExpr(anchor: expr.anchor, multiplier: expr.multiplier * multiplier, offset: expr.offset, injectionContext: expr.injectionContext)
}

@inlinable
public func *(_ multiplier: CGFloat, _ expr: DimensionLayoutExpr) -> DimensionLayoutExpr {
  return expr * multiplier
}

@inlinable
public prefix func -(_ expr: DimensionLayoutExpr) -> DimensionLayoutExpr {
  return expr * -1
}

// MARK: - Addition
@inlinable
public func +<T>(_ expr: LayoutExpr<T>, _ addend: CGFloat) -> LayoutExpr<T> {
  return LayoutExpr(anchor: expr.anchor, multiplier: expr.multiplier, offset: expr.offset + addend, injectionContext: expr.injectionContext)
}

@inlinable
public func +<T>(_ addend: CGFloat, _ expr: LayoutExpr<T>) -> LayoutExpr<T> {
  return expr + addend
}

// MARK: - Subtraction
@inlinable
public func -<T>(_ expr: LayoutExpr<T>, _ subtrahend: CGFloat) -> LayoutExpr<T> {
  return LayoutExpr(anchor: expr.anchor, multiplier: expr.multiplier, offset: expr.offset - subtrahend, injectionContext: expr.injectionContext)
}

@inlinable
public func -(_ minuend: CGFloat, _ expr: DimensionLayoutExpr) -> DimensionLayoutExpr {
  return -(expr - minuend)
}

// MARK: - Offset
@inlinable
public func -(_ lhs: XAxisLayoutExpr, _ rhs: XAxisLayoutExpr) -> DimensionLayoutExpr {
  guard let context = lhs.injectionContext ?? rhs.injectionContext else {
    fatalError("No context object found in layout statement")
  }
  
  guard abs(lhs.multiplier) == 1 && abs(rhs.multiplier) == 1 else {
    fatalError("The multipliers of the two XAxis expressions should be 1 or -1")
  }
  
  guard lhs.multiplier.sign == rhs.multiplier.sign else {
    fatalError("The multipliers of the two XAxis expressions don't have the same sign")
  }
  
  guard lhs.offset == rhs.offset else {
    fatalError("The offsets of the two XAxis expressions should be equal")
  }
  
  let dimensionAnchor: NSLayoutDimension
  switch lhs.multiplier.sign {
  case .minus:
    dimensionAnchor = lhs.anchor.anchorWithOffset(to: rhs.anchor)
  case .plus:
    dimensionAnchor = rhs.anchor.anchorWithOffset(to: lhs.anchor)
  }
  
  return DimensionLayoutExpr(anchor: dimensionAnchor, multiplier: 1, offset: 0, injectionContext: context)
}

@inlinable
public func -(_ lhs: YAxisLayoutExpr, _ rhs: YAxisLayoutExpr) -> DimensionLayoutExpr {
  guard let context = lhs.injectionContext ?? rhs.injectionContext else {
    fatalError("No context object found in layout statement")
  }
  
  guard abs(lhs.multiplier) == 1 && abs(rhs.multiplier) == 1 else {
    fatalError("The multipliers of the two XAxis expressions should be 1 or -1")
  }
  
  guard lhs.multiplier.sign == rhs.multiplier.sign else {
    fatalError("The multipliers of the two XAxis expressions don't have the same sign")
  }
  
  guard lhs.offset == rhs.offset else {
    fatalError("The offsets of the two XAxis expressions should be equal")
  }
  
  let dimensionAnchor: NSLayoutDimension
  switch lhs.multiplier.sign {
  case .minus:
    dimensionAnchor = lhs.anchor.anchorWithOffset(to: rhs.anchor)
  case .plus:
    dimensionAnchor = rhs.anchor.anchorWithOffset(to: lhs.anchor)
  }
  
  return DimensionLayoutExpr(anchor: dimensionAnchor, multiplier: 1, offset: 0, injectionContext: context)
}

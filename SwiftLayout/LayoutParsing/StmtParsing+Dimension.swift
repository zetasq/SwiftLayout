//
//  StmtParsing+Dimension.swift
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

@discardableResult
public func <=(_ lhs: DimensionLayoutExpr, _ rhs: CGFloat) -> LayoutStmt {
  guard let context = lhs.injectionContext else {
    fatalError("Cannot find context object when parsing layout statement")
  }
  
  let parsedConstraint: NSLayoutConstraint
  let constant = (rhs - lhs.offset) / lhs.multiplier
  
  switch lhs.multiplier.sign {
  case .minus:
    parsedConstraint = lhs.anchor.constraint(greaterThanOrEqualToConstant: constant)
  case .plus:
    parsedConstraint = lhs.anchor.constraint(lessThanOrEqualToConstant: constant)
  }
  
  let statement = LayoutStmt(constraint: parsedConstraint)
  context.injectStatement(statement)
  
  return statement
}

@discardableResult
public func <=(_ lhs: CGFloat, _ rhs: DimensionLayoutExpr) -> LayoutStmt {
  return rhs >= lhs
}

@discardableResult
public func <=(_ lhs: DimensionLayoutExpr, _ rhs: DimensionLayoutExpr) -> LayoutStmt {
  guard let context = lhs.injectionContext ?? rhs.injectionContext else {
    fatalError("No context object found in layout statement")
  }
  
  guard lhs.multiplier.sign == rhs.multiplier.sign else {
    fatalError("The multipliers of the two dimension expressions don't have the same sign")
  }
  
  let multiplier = rhs.multiplier / lhs.multiplier
  let constant = (rhs.offset - lhs.offset) / lhs.multiplier
  
  let parsedConstraint: NSLayoutConstraint
  switch lhs.multiplier.sign {
  case .minus:
    parsedConstraint = lhs.anchor.constraint(greaterThanOrEqualTo: rhs.anchor, multiplier: multiplier, constant: constant)
  case .plus:
    parsedConstraint = lhs.anchor.constraint(lessThanOrEqualTo: rhs.anchor, multiplier: multiplier, constant: constant)
  }
  
  let statement = LayoutStmt(constraint: parsedConstraint)
  context.injectStatement(statement)
  
  return statement
}

@discardableResult
public func ==(_ lhs: DimensionLayoutExpr, _ rhs: CGFloat) -> LayoutStmt {
  guard let context = lhs.injectionContext else {
    fatalError("Cannot find context object when parsing layout statement")
  }
  
  let parsedConstraint = lhs.anchor.constraint(equalToConstant: (rhs - lhs.offset) / lhs.multiplier)
  
  let statement = LayoutStmt(constraint: parsedConstraint)
  context.injectStatement(statement)
  
  return statement
}

@discardableResult
public func ==(_ lhs: CGFloat, _ rhs: DimensionLayoutExpr) -> LayoutStmt {
  return rhs == lhs
}

@discardableResult
public func ==(_ lhs: DimensionLayoutExpr, _ rhs: DimensionLayoutExpr) -> LayoutStmt {
  guard let context = lhs.injectionContext ?? rhs.injectionContext else {
    fatalError("No context object found in layout statement")
  }
  
  let parsedConstraint = lhs.anchor.constraint(equalTo: rhs.anchor, multiplier: rhs.multiplier / lhs.multiplier, constant: (rhs.offset - lhs.offset) / lhs.multiplier)
  
  let statement = LayoutStmt(constraint: parsedConstraint)
  context.injectStatement(statement)
  
  return statement
}

@discardableResult
public func >=(_ lhs: DimensionLayoutExpr, _ rhs: CGFloat) -> LayoutStmt {
  guard let context = lhs.injectionContext else {
    fatalError("Cannot find context object when parsing layout statement")
  }
  
  let parsedConstraint: NSLayoutConstraint
  let constant = (rhs - lhs.offset) / lhs.multiplier
  
  switch lhs.multiplier.sign {
  case .minus:
    parsedConstraint = lhs.anchor.constraint(lessThanOrEqualToConstant: constant)
  case .plus:
    parsedConstraint = lhs.anchor.constraint(greaterThanOrEqualToConstant: constant)
  }
  
  let statement = LayoutStmt(constraint: parsedConstraint)
  context.injectStatement(statement)
  
  return statement
}

@discardableResult
public func >=(_ lhs: CGFloat, _ rhs: DimensionLayoutExpr) -> LayoutStmt {
  return rhs <= lhs
}

@discardableResult
public func >=(_ lhs: DimensionLayoutExpr, _ rhs: DimensionLayoutExpr) -> LayoutStmt {
  guard let context = lhs.injectionContext ?? rhs.injectionContext else {
    fatalError("No context object found in layout statement")
  }
  
  guard lhs.multiplier.sign == rhs.multiplier.sign else {
    fatalError("The multipliers of the two dimension expressions don't have the same sign")
  }
  
  let multiplier = rhs.multiplier / lhs.multiplier
  let constant = (rhs.offset - lhs.offset) / lhs.multiplier
  
  let parsedConstraint: NSLayoutConstraint
  switch lhs.multiplier.sign {
  case .minus:
    parsedConstraint = lhs.anchor.constraint(lessThanOrEqualTo: rhs.anchor, multiplier: multiplier, constant: constant)
  case .plus:
    parsedConstraint = lhs.anchor.constraint(greaterThanOrEqualTo: rhs.anchor, multiplier: multiplier, constant: constant)
  }
  
  let statement = LayoutStmt(constraint: parsedConstraint)
  context.injectStatement(statement)
  
  return statement
}

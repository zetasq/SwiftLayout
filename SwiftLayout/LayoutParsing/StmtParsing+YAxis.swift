//
//  StmtParsing+YAxis.swift
//  SwiftLayout
//
//  Created by Zhu Shengqi on 15/02/2018.
//  Copyright © 2018 Zhu Shengqi. All rights reserved.
//

import Foundation

@discardableResult
public func <=(_ lhs: YAxisLayoutExpr, _ rhs: YAxisLayoutExpr) -> LayoutStmt {
  guard (lhs.injectionContext != nil) != (rhs.injectionContext != nil) else {
    fatalError("There should be one and only one context object used in layout statement")
  }
  
  guard lhs.multiplier == 1 && rhs.multiplier == 1 else {
    fatalError("Multipliers must be 1 when writing X Axis layout statement")
  }
  
  let context = (lhs.injectionContext ?? rhs.injectionContext)!
  
  let parsedConstraint = lhs.anchor.constraint(lessThanOrEqualTo: rhs.anchor, constant: rhs.offset - lhs.offset)
  context.injectConstraint(parsedConstraint)
  
  return LayoutStmt(constraint: parsedConstraint)
}

@discardableResult
public func ==(_ lhs: YAxisLayoutExpr, _ rhs: YAxisLayoutExpr) -> LayoutStmt {
  guard (lhs.injectionContext != nil) != (rhs.injectionContext != nil) else {
    fatalError("There should be one and only one context object used in layout statement")
  }
  
  guard lhs.multiplier == 1 && rhs.multiplier == 1 else {
    fatalError("Multipliers must be 1 when writing X Axis layout statement")
  }
  
  let context = (lhs.injectionContext ?? rhs.injectionContext)!
  
  let parsedConstraint = lhs.anchor.constraint(equalTo: rhs.anchor, constant: rhs.offset - lhs.offset)
  context.injectConstraint(parsedConstraint)
  
  return LayoutStmt(constraint: parsedConstraint)
}

@discardableResult
public func >=(_ lhs: YAxisLayoutExpr, _ rhs: YAxisLayoutExpr) -> LayoutStmt {
  return rhs <= lhs
}

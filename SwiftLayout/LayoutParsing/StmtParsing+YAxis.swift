//
//  StmtParsing+YAxis.swift
//  SwiftLayout
//
//  Created by Zhu Shengqi on 15/02/2018.
//  Copyright © 2018 Zhu Shengqi. All rights reserved.
//

import Foundation

@inlinable
@discardableResult
public func <=(_ lhs: YAxisLayoutExpr, _ rhs: YAxisLayoutExpr) -> LayoutStmt {
  guard let context = lhs.injectionContext ?? rhs.injectionContext else {
    fatalError("No context object found in layout statement")
  }
  
  guard lhs.multiplier == 1 && rhs.multiplier == 1 else {
    fatalError("Multipliers must be 1 when writing Y Axis layout statement")
  }
  
  let parsedConstraint = lhs.anchor.constraint(lessThanOrEqualTo: rhs.anchor, constant: rhs.offset - lhs.offset)
  
  let statement = LayoutStmt(constraint: parsedConstraint)
  context.injectStatement(statement)
  
  return statement
}

@inlinable
@discardableResult
public func ==(_ lhs: YAxisLayoutExpr, _ rhs: YAxisLayoutExpr) -> LayoutStmt {
  guard let context = lhs.injectionContext ?? rhs.injectionContext else {
    fatalError("No context object found in layout statement")
  }
  
  guard lhs.multiplier == 1 && rhs.multiplier == 1 else {
    fatalError("Multipliers must be 1 when writing Y Axis layout statement")
  }
  
  let parsedConstraint = lhs.anchor.constraint(equalTo: rhs.anchor, constant: rhs.offset - lhs.offset)
  
  let statement = LayoutStmt(constraint: parsedConstraint)
  context.injectStatement(statement)
  
  return statement
}

@inlinable
@discardableResult
public func >=(_ lhs: YAxisLayoutExpr, _ rhs: YAxisLayoutExpr) -> LayoutStmt {
  guard let context = lhs.injectionContext ?? rhs.injectionContext else {
    fatalError("No context object found in layout statement")
  }
  
  guard lhs.multiplier == 1 && rhs.multiplier == 1 else {
    fatalError("Multipliers must be 1 when writing Y Axis layout statement")
  }
  
  let parsedConstraint = lhs.anchor.constraint(greaterThanOrEqualTo: rhs.anchor, constant: rhs.offset - lhs.offset)
  
  let statement = LayoutStmt(constraint: parsedConstraint)
  context.injectStatement(statement)
  
  return statement
}

//
//  StmtParsing+XAxis.swift
//  SwiftLayout
//
//  Created by Zhu Shengqi on 15/02/2018.
//  Copyright © 2018 Zhu Shengqi. All rights reserved.
//

import Foundation

@discardableResult
public func <=(_ lhs: XAxisLayoutExpr, _ rhs: XAxisLayoutExpr) -> LayoutStmt {
  guard let context = lhs.injectionContext ?? rhs.injectionContext else {
    fatalError("No context object found in layout statement")
  }
  
  guard lhs.multiplier == 1 && rhs.multiplier == 1 else {
    fatalError("Multipliers must be 1 when writing X Axis layout statement")
  }
  
  let parsedConstraint = lhs.anchor.constraint(lessThanOrEqualTo: rhs.anchor, constant: rhs.offset - lhs.offset)
  context.injectConstraint(parsedConstraint)
  
  return LayoutStmt(constraint: parsedConstraint)
}

@discardableResult
public func ==(_ lhs: XAxisLayoutExpr, _ rhs: XAxisLayoutExpr) -> LayoutStmt {
  guard let context = lhs.injectionContext ?? rhs.injectionContext else {
    fatalError("No context object found in layout statement")
  }
  
  guard lhs.multiplier == 1 && rhs.multiplier == 1 else {
    fatalError("Multipliers must be 1 when writing X Axis layout statement")
  }
  
  let parsedConstraint = lhs.anchor.constraint(equalTo: rhs.anchor, constant: rhs.offset - lhs.offset)
  context.injectConstraint(parsedConstraint)
  
  return LayoutStmt(constraint: parsedConstraint)
}

@discardableResult
public func >=(_ lhs: XAxisLayoutExpr, _ rhs: XAxisLayoutExpr) -> LayoutStmt {
    guard let context = lhs.injectionContext ?? rhs.injectionContext else {
        fatalError("No context object found in layout statement")
    }
    
    guard lhs.multiplier == 1 && rhs.multiplier == 1 else {
        fatalError("Multipliers must be 1 when writing X Axis layout statement")
    }
    
    let parsedConstraint = lhs.anchor.constraint(greaterThanOrEqualTo: rhs.anchor, constant: rhs.offset - lhs.offset)
    context.injectConstraint(parsedConstraint)
    
    return LayoutStmt(constraint: parsedConstraint)
}

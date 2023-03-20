//
//  Operations.swift
//  
//
//  Created by Noah Kamara on 20.03.23.
//

import Foundation

@usableFromInline
func vectorOperation<L,R>(
    _ operation: (_ lhs: CGFloat, _ rhs: CGFloat) -> CGFloat,
    lhs: L,
    rhs: R
) -> L where L: CGVectorConvertible, R: CGVectorConvertible {
    let vectorResult = CGVector(
        dx: operation(lhs.cgVector.dx, rhs.cgVector.dx),
        dy: operation(lhs.cgVector.dy, rhs.cgVector.dy)
    )
    
    return L(vectorResult)
}


@inlinable
public func +<T>(lhs: T, rhs: some CGVectorConvertible) -> T where T: CGVectorConvertible {
    vectorOperation(+, lhs: lhs, rhs: rhs)
}

@inlinable
public func -<T>(lhs: T, rhs: some CGVectorConvertible) -> T where T: CGVectorConvertible {
    vectorOperation(-, lhs: lhs, rhs: rhs)
}

@inlinable
public func *<T>(lhs: T, rhs: some CGVectorConvertible) -> T where T: CGVectorConvertible {
    vectorOperation(*, lhs: lhs, rhs: rhs)
}


@inlinable
public func /<T>(lhs: T, rhs: some CGVectorConvertible) -> T where T: CGVectorConvertible {
    vectorOperation(/, lhs: lhs, rhs: rhs)
}


// MARK: Operations with Quadratic Vector

@inlinable
public func +<T>(lhs: T, rhs: CGFloat) -> T where T: CGVectorConvertible {
    vectorOperation(+, lhs: lhs, rhs: CGVector(dx: rhs, dy: rhs))
}

@inlinable
public func -<T>(lhs: T, rhs: CGFloat) -> T where T: CGVectorConvertible {
    vectorOperation(-, lhs: lhs, rhs: CGVector(dx: rhs, dy: rhs))
}

@inlinable
public func *<T>(lhs: T, rhs: CGFloat) -> T where T: CGVectorConvertible {
    vectorOperation(*, lhs: lhs, rhs: CGVector(dx: rhs, dy: rhs))
}


@inlinable
public func /<T>(lhs: T, rhs: CGFloat) -> T where T: CGVectorConvertible {
    vectorOperation(/, lhs: lhs, rhs: CGVector(dx: rhs, dy: rhs))
}


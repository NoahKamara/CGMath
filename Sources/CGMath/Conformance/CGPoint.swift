//
//  CGPoint.swift
//  
//
//  Created by Noah Kamara on 20.03.23.
//

import Foundation

extension CGPoint: CGVectorConvertible {
    public var cgVector: CGVector {
        CGVector(dx: x, dy: y)
    }
    
    public init(_ vector: CGVector) {
        self.init(x: vector.dx, y: vector.dy)
    }
}


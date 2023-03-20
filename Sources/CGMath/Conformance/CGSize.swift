//
//  CGSize.swift
//  
//
//  Created by Noah Kamara on 20.03.23.
//

import Foundation

extension CGSize: CGVectorConvertible {
    public var cgVector: CGVector {
        CGVector(dx: width, dy: height)
    }
    
    public init(_ vector: CGVector) {
        self.init(width: vector.dx, height: vector.dy)
    }
}


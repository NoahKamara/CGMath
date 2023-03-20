//
//  CGVector.swift
//  
//
//  Created by Noah Kamara on 20.03.23.
//

import Foundation

extension CGVector: CGVectorConvertible {
    public var cgVector: CGVector { self }
    
    public init(_ vector: CGVector) {
        self = vector
    }
}

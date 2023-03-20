//
//  CGVectorConvertible.swift
//
//
//  Created by Noah Kamara on 20.03.23.
//

import Foundation

public protocol CGVectorConvertible {
    var cgVector: CGVector { get }
    init(_ vector: CGVector)
}

public extension CGVectorConvertible {
    init(_ other: some CGVectorConvertible) {
        self.init(other.cgVector)
    }
}





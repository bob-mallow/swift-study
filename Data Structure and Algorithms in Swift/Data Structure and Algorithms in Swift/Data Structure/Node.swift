//
//  Node.swift
//  Data Structure and Algorithms in Swift
//
//  Created by qwertystar on 7/20/24.
//

import Foundation


public class Node<Value> {
    var value: Value
    var next: Node?
    
    public init(value: Value, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}

extension Node: CustomStringConvertible {
    public var description: String {
        guard let next = self.next else {
            return "\(value)"
        }
        return "\(value) -> \(String(describing: next))"
    }
}

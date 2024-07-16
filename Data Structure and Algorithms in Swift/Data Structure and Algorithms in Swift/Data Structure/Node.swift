//
//  Node.swift
//  Data Structure and Algorithms in Swift
//
//  Created by bob on 7/11/24.
//

import Foundation

public class Node<Value> {
    /// 노드의 값
    public var value: Value
    /// 다음 연결된 노드
    public var next: Node?
    
    public init(value: Value, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}

extension Node: CustomStringConvertible {
    public var description: String {
        guard let next = self.next else {
            return "\(self.value)"
        }
        return "\(self.value) -> \(String(describing: next)) "
    }
}

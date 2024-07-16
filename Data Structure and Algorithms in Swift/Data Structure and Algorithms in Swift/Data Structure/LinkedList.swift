//
//  LinkedList.swift
//  Data Structure and Algorithms in Swift
//
//  Created by bob on 7/11/24.
//

import Foundation

public struct LinkedList<Value> {
    var head: Node<Value>?
    var tail: Node<Value>?
    
    var isEmpty: Bool {
        self.head == nil
    }
    
    public init() {}
    
    /*
     1. push: Adds a value at the front of the list.
     2. append: Adds a value at the end of the list.
     3. insert(after:): Adds a value after a particular node of the list.
     */
    
    public mutating func push(_ value: Value) {
        head = Node(value: value, next: head)
        if tail == nil {
            tail = head
        }
    }
    
    public mutating func append(_ value: Value) {
        // 값이 비어 있다면 가장 처음에 입력(push)
        guard isEmpty == false else {
            push(value)
            return
        }
        tail?.next = Node(value: value)
        tail = tail?.next
    }
    
    public func node(at index: Int) -> Node<Value>? {
        var currentNode = head
        var currentIndex = 0
        
        while currentNode != nil && currentIndex < index {
            currentNode = currentNode!.next
            currentIndex += 1
        }
        return currentNode
    }
    
    @discardableResult
    public mutating func insert(_ value: Value, after node: Node<Value>) -> Node<Value> {
        guard tail !== node else {
            append(value)
            return tail!
        }
        node.next = Node(value: value, next: node.next)
        return node.next!
    }
    
    @discardableResult
    public mutating func pop() -> Value? {
        defer {
            head = head?.next
            if isEmpty {
                tail = nil
            }
        }
        return head?.value
    }
    
    @discardableResult
    public mutating func removeLast() -> Value? {
        guard let head = head else {
            return nil
        }
        
        guard head.next != nil else {
            return pop()
        }
        
        var prev = head
        var current = head
        while let next = current.next {
            prev = current
            current = next
        }
        prev.next = nil
        tail = prev
        return current.value
    }
}

extension LinkedList: CustomStringConvertible {
    public var description: String {
        guard let head = head else {
            return "Empty list"
        }
        return String(describing: head)
    }
}

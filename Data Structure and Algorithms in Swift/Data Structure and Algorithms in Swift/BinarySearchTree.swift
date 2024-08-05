//
//  BinarySearchTree.swift
//  Data Structure and Algorithms in Swift
//
//  Created by bob on 8/5/24.
//

import Foundation

class BSTNode<T: Comparable> {
    var value: T
    var leftChild: T?
    var rightChild: T?
    
    init(value: T, leftChild: T? = nil, rightChild: T? = nil) {
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}


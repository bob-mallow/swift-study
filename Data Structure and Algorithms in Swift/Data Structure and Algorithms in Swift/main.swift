//
//  main.swift
//  Data Structure and Algorithms in Swift
//
//  Created by bob on 7/11/24.
//

import Foundation

var list = LinkedList<Int>()
list.append(3)
list.append(2)
list.append(1)

let tailNode = list.tail!
list.insert(999, after: tailNode)
list.pop()

print(list)

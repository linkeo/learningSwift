//
//  optional.swift
//  Your mission is to complete the function in line 36
//  * You can ignore code before it, just focus on the inside of the function
//  * NOTICE: you'd better know function and class.
//  Created by 林康 on 14/11/15.
//
//

/**
 * Node of a linked-list
 */
class Node {
    var value:Int
    var next:Node? = nil
    init(value:Int) {
        self.value = value
    }
}

var n1 = Node(value:1)
var n2 = Node(value:2)
var n3 = Node(value:3)
var n4 = Node(value:4)
var n5 = Node(value:5)
var n6 = Node(value:6)
var n7 = Node(value:7)
var n8 = Node(value:8)

n1.next = n2
n2.next = n3
n3.next = n4
n4.next = n5
n6.next = n7
n7.next = n8

func isLastNode(node:Node) -> Bool {
    // TODO: complete the function that discuss a node is the last node
	return (node.next == nil)
}

assert(isLastNode(n1)==false,"Test failed")
assert(isLastNode(n2)==false,"Test failed")
assert(isLastNode(n3)==false,"Test failed")
assert(isLastNode(n4)==false,"Test failed")
assert(isLastNode(n5)==true,"Test failed")
assert(isLastNode(n6)==false,"Test failed")
assert(isLastNode(n7)==false,"Test failed")
assert(isLastNode(n8)==true,"Test failed")
println("All test is passed")
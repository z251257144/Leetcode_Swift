//
//  main.swift
//  LeetCode
//
//  Created by ZhouMin on 2019/11/6.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Foundation

print("Hello, World!")

//TwoSumTest()
//MoveZeroesTest()
//ContainerWithMostWaterTest()
//ClimbStairsTest()
//ThreeSumTest()
//ReverseLinkedListTest()

//SwapNodesInPairsDemo()
//LinkedListCycleTest()
//ReverseNodesInKGroupTest()
//RemoveDuplicatesFromSortedArrayTest()
RotateArrayTest()
//MergeTwoSortedListNodesTest()
//MergeSortedArrayTest()
//PlusOneTest()

var stack = Stack<String>()
stack.push("aaa")
stack.push("bbb")
stack.push("ccc")
print(stack)

stack.push("ddd")

var que = Queue<String>()
que.add("aaa")
que.add("bbb")
que.add("ccc")
que.poll()
print(que)

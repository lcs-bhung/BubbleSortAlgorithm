//
//  main.swift
//  BinarySearchAlgorithm
//
//  Created by Branton Hung on 2021-03-23.
//

import Foundation


//make the array
var dataSet: [Int] = []


//make the sorted array
for _ in 1...11 {
    dataSet.append(Int.random(in: 1...100))
}

//sort the array using the function in SharedFunctions
bubbleSort1(unsorted: &dataSet)

print("Sorted array:")
print (dataSet)

//make the end and start
var start = 0
var end = dataSet.count

//make the target
var target = dataSet[Int.random(in: 0...dataSet.count - 1)]

print ("Target:")
print (target)


//loop n times
for _ in 0...end {
    
    //get the middle number    MIDPOINT is wront
    var midPoint = (end + start) / 2
   print ("mid point:")
    print (midPoint)
    
    if dataSet[midPoint] == target {
        let result = dataSet[midPoint]
        break
    } else if dataSet[midPoint] < target {
        start = midPoint + 1
        print ("new start: \(start)")
    } else if dataSet[midPoint] > target {
        end = midPoint - 1
        print ("new end: \(end)")
    } else if end == start {
        break
    }
    
   
}
//print (dataSet[midPoint])


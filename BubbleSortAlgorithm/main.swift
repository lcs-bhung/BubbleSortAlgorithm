//
//  main.swift
//  BubbleSortAlgorithm
//
//  Created by Branton Hung on 2021-03-19.
//

import Foundation

print("Hello, World!")



//Make an array

var dataSet: [Int] = []


//populate the array

for _ in 1...10 {
    
    dataSet.append(Int.random(in: 1...100))
}

//print the unsorted array
print("unsorted:")
print(dataSet)
waitForInput()

var unsorted = dataSet.count - 1
//Make a boolean value swap
var swap = false

//Sort the array

//loop thriugh the entire array "n times
for i in 0..<dataSet.count {
    // pass through the array to float the highest number to the end
    for j in 0..<unsorted {
        
        
        swap = false

        //What comparison is this
//        print("pass \(i + 1), comparison \(j + 1)...")r
        
        //compare left value to rught value
        if dataSet[j] > dataSet[j+1] {
           swap = true
            //Swap valies when leftvalue is greater than the right value
            let temporaryValue = dataSet[j]
            dataSet[j] = dataSet[j + 1]
            dataSet[j + 1] = temporaryValue
            
        }
       
    }

    //If the code does not swap any numbers the array is sorted
    if swap == false {
        break
    }
    
    unsorted -= 1
    

    //Print the array after "n" passes
    print("Array after pass \(i+1)")
    print(dataSet)
    waitForInput()

    
    }

    


//Print the array
print("sorted:")
print(dataSet)
waitForInput()




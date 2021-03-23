//
//  SharedFunctions.swift
//  BubbleSortAlgorithm
//
//  Created by Branton Hung on 2021-03-23.
//

import Foundation

// Function to pause to allow the user to see output
//allow the aray to be passed by reference, mark the parameter as 'inout which means we can change the original fro outside the runction
func waitForInput() {
    print("Press RETURN")
    _ = readLine()
}


//accept an unsorted array, and output a sorted array
//var unsorted = dataSet.count
func bubbleSort1(unsorted dataSet: inout [Int]) -> [Int] {
    var swap = false

    //Sort the array

    //loop thriugh the entire array "n times
    for i in 0..<dataSet.count {
        // pass through the array to float the highest number to the end
        for j in 0..<dataSet.count - 1 - i {
            
            
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
//        if swap == false {
//            break
//        }
        
//        unsorted -= 1
        

        //Print the array after "n" passes
//        print("Array after pass \(i+1)")
//        print(dataSet)
//        waitForInput()

        
        }

       return dataSet
}

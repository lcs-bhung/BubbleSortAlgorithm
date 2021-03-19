//
//  main.swift
//  BubbleSortAlgorithm
//
//  Created by Branton Hung on 2021-03-19.
//

import Foundation

print("Hello, World!")

// Function to pause to allow the user to see output
func waitForInput() {
    print("Press RETURN")
    _ = readLine()
}

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

//Sort the array


//loop thriugh the entire array "n times
for i in 0..<dataSet.count {

    //1 pass through the array to float the highest number to the end
    for j in 0..<dataSet.count - 1 {

        //compare left value to rught value
        if dataSet[j] > dataSet[j+1] {
            
            //Swap valies when leftvalue is greater than the right value
            let temporaryValue = dataSet[j]
            dataSet[j] = dataSet[j + 1]
            dataSet[j + 1] = temporaryValue
            
            

            
            
        }
        
    }


    //Print the array after "n" passes
    print("Array after pass \(i+1)")
    print(dataSet)
    waitForInput()

}

//Print the array
print("sorted:")
print(dataSet)
waitForInput()




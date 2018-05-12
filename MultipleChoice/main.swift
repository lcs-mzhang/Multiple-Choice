//
//  main.swift
//  MultipleChoice
//

import Foundation

// INPUT
// Collect and filter user input here
var expectedLines = 0
var studentAnswer : [Int : String] = [:]
var answerKey : [Int : String] = [:]

while true {
    print("How many lines?")
    guard let givenInput = readLine() else {
        continue
    }
    guard let integerInput = Int(givenInput) else {
        continue
    }
    if integerInput <= 0 || integerInput >= 10000 {
        continue
    }
    expectedLines = integerInput
    break
}

// PROCESS
// Implement the primary logic of the problem here
// Some output may be given here if you desire

// Example of how to collect multiple input lines
print("Please enter the \(expectedLines) lines of student answers follow by the \(expectedLines) lines of correct answers for test:")
for i in 1...expectedLines {
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenLine = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    // Now we have the line, we can print it out, analyze it as needed, et cetera
    studentAnswer[i] = givenLine
}

for i in 1...expectedLines {
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenLine = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    // Now we have the line, we can print it out, analyze it as needed, et cetera
    answerKey[i] = givenLine
}

//input: for i in 1...expectedLines {
//    prompting: while expectedLines != answerKey.count {
//        guard let givenLine = readLine() else {
//            continue
//        }
//        switch givenLine {
//        case "A", "B", "C", "D", "E":
//            answerKey[i] = givenLine
//        default:
//            continue input
//        }
//    }
//}


var correctAnswers = 0
for i in 1...expectedLines {
    if answerKey[i] == studentAnswer[i] {
        correctAnswers += 1
    } else {
        continue
    }
}

// OUTPUT
// Report results to the user here

print("The student answered \(correctAnswers) question(s) correctly.")

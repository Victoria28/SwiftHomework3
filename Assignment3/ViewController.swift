//
//  ViewController.swift
//  Assignment3
//
//  Created by Victoria McKee on 15/07/2018.
//  Copyright © 2018 Victoria McKee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        print("Method 1")
        theLargestOutOfTwoNumbers(number1: 6, number2: 20 )
        
        print("Method 2")
        print(numberToThePowerOf2And3(number:5))
        
        print("Method 3")
        displayNumbersFrom0ToXAndInReverseOrder(numberx: 20)
        
        print("Method 4")
        print(countingDivisorsOfANumber(6))
        
        print("Method 5")
        print(findingOutIfANUmberIsPerfect(7))
        
        print("-----------------Block 2---------------")
        
        print("Method 6")
        print(" The islanders would have",islandPurchasedFor$24(24.0, 2018, 1826, interests: 6), "if they had put the money in a bank with 6% interest")
        
        print("Method 7")
        print("A student needs", studentTryingToSurviveOn1000Hrn(scholarship: 700, expenses: 1000),"on top of the yearly scholarship to survive a year")
        
        print ("Method 8")
        print("The money will last",theAmountOfMonthsMoneyWillLast(scholarship: 700, expenses: 1000, savings: 2400), "months")
        
        print(" Method 9")
        print("The flipped number is", reverseOrderOfANumber(105))
        
        
        
        
        
        
    }
    
    func theLargestOutOfTwoNumbers(number1:Int, number2:Int) {
        
        if number1>number2 {
            print("The larger number is", number1)
            
        }
        else if number2>number1 {
            print("The larger number is", number2)
            
        }
        else {
            print("number1 equals number2")
            
        }
        
    }
    
    func numberToThePowerOf2And3(number: Int) -> (result1:Int, result2: Int) {
        var result1: Int
        var result2: Int
        result1 = number * number
        result2 = number * number * number
        return (result1, result2)
        
    }
    
    func displayNumbersFrom0ToXAndInReverseOrder(numberx: Int) {
        let number = numberx
        
        print("Original order:")
        for i in 0...number {
            print(i)
        }
        print("Reverse order:")
        for i in 0...number {
            print(number-i)
            
        }
    }
    
    func countingDivisorsOfANumber(_ number: Int) -> Int {
        var result = 0
        let number = number
        var divisor = 0
        
        while divisor < number {
            
            divisor = divisor + 1
            if number % divisor == 0 {
                result += 1
                
            }
        }
        return result
        
    }
    func findingOutIfANUmberIsPerfect(_ number: Int) -> Bool {
        let number = number
        var divisor = 0
        var sum = 0
        
        while divisor < number {
            divisor = divisor + 1
            if number % divisor == 0 {
                if divisor == number{
                    break
                }
                sum = sum + divisor
            }
        }
        if sum == number {
            return true
        }
        return false
    }
    
    func islandPurchasedFor$24(_ InitialCost: Double, _ CurrentYear: Int, _ YearOfPurchase: Int, interests: Double) -> Double {
        
        let timePassed = CurrentYear - YearOfPurchase
        var cost = InitialCost
        
        for _ in 0..<timePassed {
            cost = cost * (interests/100 + 1)
            
        }
        return cost
    }
    
    func studentTryingToSurviveOn1000Hrn(scholarship: Double, expenses: Double) -> Double {
        var expenses = expenses
        var necessaryAmountOfMoneyToSurvive = 0.0
        for _ in 0..<10 {
            
            necessaryAmountOfMoneyToSurvive = necessaryAmountOfMoneyToSurvive + expenses
            expenses = expenses * 1.03
            
        }
        
        necessaryAmountOfMoneyToSurvive = necessaryAmountOfMoneyToSurvive - scholarship * 10
        return necessaryAmountOfMoneyToSurvive
    }
    
    func theAmountOfMonthsMoneyWillLast(scholarship: Double, expenses: Double, savings: Double) -> Double {
        var expenses = expenses
        var necessaryAmountOfMoneyToSurvive = 0.0
        var amountOfMonths = 0.0
        
        for _ in 0..<10 {
            expenses = expenses * 1.03
            necessaryAmountOfMoneyToSurvive = necessaryAmountOfMoneyToSurvive + expenses
        }
        amountOfMonths = necessaryAmountOfMoneyToSurvive / (scholarship + savings)
        return amountOfMonths
    }
    
    
    func reverseOrderOfANumber(_ number: Int) -> Int {
        var result=0
        var number = number
        while (number != 0) {
            result = result * 10 + number % 10
            number = number / 10
            
        }
        
        return (result)
    }
    
}








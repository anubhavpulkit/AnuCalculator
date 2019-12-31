//
//  CalculationLogic.swift
//  Calculator
//
//  Created by Gunesh S. on 12/25/19.
//  Copyright © 2019 London App Brewery. All rights reserved.

import Foundation

struct CalculatorLogic {
    
    private var number: Double?
    
    private var intermediateCalculation: (n1: Double, calcMethod: String)?
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    mutating func calculate(symbol: String) -> Double? {
        
        if let n = number {
            
            switch symbol {
                
            case "+/-":
                return n * (-1)
                
            case "AC":
                intermediateCalculation = (n1: 0, calcMethod: symbol)
                return 0
                
            case "%":
                return n/100
                
            case "=":
                return performTwoNumCalculation(n2: n)
                
            default:
                intermediateCalculation = (n1: n, calcMethod: symbol)
            }
            
        }
        return nil
    }
    
    func performTwoNumCalculation(n2: Double) -> Double? {
        
        if let n1 = intermediateCalculation?.n1,
            let symbol = intermediateCalculation?.calcMethod {
            
            switch symbol {
            case "+":
                return n1 + n2
                
            case "-":
                return n1 - n2
                
            case "×":
                return n1 * n2
                
            case "÷":
                return n1 / n2
                
            case "AC":
                return 0
                
            default:
                fatalError("Error with performTwoNumCalculation, the operation passed in does not match any of the cases")
            }
        }
        return nil
    }
}

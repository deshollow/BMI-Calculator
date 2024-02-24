//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by deshollow on 24.02.2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMIxxx?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0) //chaining
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
        
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMIxxx(value: bmiValue, advice: "Eat more pies", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMIxxx(value: bmiValue, advice: "Fit as fiddle", color: UIColor.green)
        } else {
            bmi = BMIxxx(value: bmiValue, advice: "Eat less pies!", color: UIColor.red)
        }
        
    }
}

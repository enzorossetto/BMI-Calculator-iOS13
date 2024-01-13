//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Enzo Rossetto on 13/01/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    private var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiToOneDecimalPlace = String(format: "%.1f", bmi?.value ?? "0.0")
        return bmiToOneDecimalPlace
    }
    
    func getAdvice() -> String {
        bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        bmi?.color ?? #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            let color = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: color)
        } else if bmiValue < 24.9 {
            let color = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: color)
        } else {
            let color = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: color )
        }
    }
}

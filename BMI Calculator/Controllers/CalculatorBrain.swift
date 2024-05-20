//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Doni on 5/13/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / pow(height, 2)
        
        let color = (underwheight: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), normalwheight: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), overwheight: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more healthy food!", color: color.underwheight)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a Lion!", color: color.normalwheight)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less you oby!", color: color.overwheight)
        }
    }
    
    func getBMIValue() -> String {
        let bmiToDecimal = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToDecimal
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
}

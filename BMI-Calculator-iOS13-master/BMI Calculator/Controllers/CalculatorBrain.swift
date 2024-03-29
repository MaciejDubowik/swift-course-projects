//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Maciej Dubowik on 15/02/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    
    func getBMIValue() -> String {
        let bmiToOneDecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToOneDecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / pow(height, 2)
        
        if(bmiValue < 18.5) {
            bmi = BMI(value: bmiValue, advice: "Eat more cookies!", color: UIColor.blue)
        }else if(bmiValue < 24.9){
            bmi = BMI(value: bmiValue, advice: "Good weight!", color: UIColor.green)
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat less cookies!", color: UIColor.red)
        }
    
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.white
    }
    
}

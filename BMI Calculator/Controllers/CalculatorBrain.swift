//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Adriel Teles on 08/10/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateResult(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more Pies", color: .cyan)
        }else if bmiValue <= 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: .systemGreen)
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: .systemPink)
        }
        
    }
    
    func getResult() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    
    func getAdivice() -> String{
        return bmi?.advice ?? "no adivice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
}

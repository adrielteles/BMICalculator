//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var bmi = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    @IBAction func heightSlider(_ sender: UISlider) {
        let heightValue = String(format: "%.2f",sender.value)
        heightLabel.text = "\(heightValue)m"
    }

    @IBAction func weightSlider(_ sender: UISlider) {
        let weightValue = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weightValue)Kg"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateButton(_ sender: UIButton) {
        
        let heightValue = heightSlider.value
        let weightValue = weightSlider.value
        
        bmi.calculateResult(height: heightValue, weight: weightValue)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let resultVC = segue.destination as! ResultViewController
            resultVC.bmiResult = bmi.getResult()
            resultVC.adivice = bmi.getAdivice()
            resultVC.color = bmi.getColor()
        }
    }
    
}


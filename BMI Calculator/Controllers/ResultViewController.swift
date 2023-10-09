//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Adriel Teles on 08/10/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiResult: String?
    
    @IBOutlet weak var adiviceLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = bmiResult
    }
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

}

//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    
    var calulatorBrain = CalculatorBrain()
    
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func weightSliderChanged(_ sender: UISlider) {
        var weight = String(format:  "%.0f", sender.value)
        weightLabel.text = "\(weight)kg"
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format:  "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calulatorBrain.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "goToResult") {
            let destinatinationVC = segue.destination as! ResultViewController
            destinatinationVC.bmiValue = calulatorBrain.getBMIValue()
            destinatinationVC.advice = calulatorBrain.getAdvice()
            destinatinationVC.color = calulatorBrain.getColor()
        }
    }
}


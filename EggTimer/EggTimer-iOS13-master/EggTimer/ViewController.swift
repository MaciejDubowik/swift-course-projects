//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    let eggTimes: [String : Int] = ["Soft": 10, "Medium": 420, "Hard": 720]
    var totalTime: Float = 0
    var secondsPassed: Float = 0
    
    @IBOutlet weak var progresBar: UIProgressView!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let hardness = sender.currentTitle!
        let result = eggTimes[hardness]!
        var counter = result
        while(counter >= 0){
            counter-=1
            secondsPassed+=1
            progresBar.progress = 1.0 - (secondsPassed/Float(result))
            Thread.sleep(forTimeInterval: 1.0)
            if(counter == 0){
                titleLabel.text = "Done"
                
            }
        }
    
        
    }
    

}

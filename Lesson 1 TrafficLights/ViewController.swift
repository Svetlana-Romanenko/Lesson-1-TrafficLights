//
//  ViewController.swift
//  Lesson 1 TrafficLights
//
//  Created by Светлана Романенко on 27.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.alpha=0.3
        yellowLightView.alpha=0.3
        greenLightView.alpha=0.3
        
        redLightView.layer.cornerRadius=56.75
        yellowLightView.layer.cornerRadius=56.75
        greenLightView.layer.cornerRadius=56.75
    }

    @IBAction func startButtonPressed() {
        if startButton.currentTitle=="START" {
            redLightView.alpha=1
            startButton.setTitle("NEXT", for: .normal)
        }
        else if redLightView.alpha == 1 {
            redLightView.alpha=0.3
            yellowLightView.alpha=1
        }
        else if yellowLightView.alpha == 1{
            yellowLightView.alpha=0.3
            greenLightView.alpha=1
        }
        else {
            greenLightView.alpha=0.3
            redLightView.alpha=1
        }
    }
    
}


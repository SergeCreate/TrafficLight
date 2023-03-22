//
//  ViewController.swift
//  TrafficLight
//
//  Created by Сергей Захаров on 18.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private let lightIsOff: CGFloat = 0.3
    private let lightIsOn: CGFloat = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 15
        
        redLightView.alpha = lightIsOff
        yellowLightView.alpha = lightIsOff
        greenLightView.alpha = lightIsOff
    
    }
    
    override func viewWillLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
    }
    
    @IBAction func pressButton() {
        if startButton.currentTitle == "Start" {
            startButton.setTitle("Next", for: .normal)
        }
        
        if redLightView.alpha == yellowLightView.alpha {
            redLightView.alpha = lightIsOn
            greenLightView.alpha = lightIsOff
            
        } else if redLightView.alpha > lightIsOff &&
                    yellowLightView.alpha == greenLightView.alpha {
            yellowLightView.alpha = lightIsOn
            redLightView.alpha = lightIsOff
            
        } else if yellowLightView.alpha > lightIsOff &&
                    greenLightView.alpha == redLightView.alpha {
            greenLightView.alpha = lightIsOn
            yellowLightView.alpha = lightIsOff
        }
    }
}


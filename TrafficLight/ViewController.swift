//
//  ViewController.swift
//  TrafficLight
//
//  Created by Сергей Захаров on 18.03.2023.
//

import UIKit

class ViewController: UIViewController {

    let alphaLight: CGFloat = 0.3
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        redLightView.alpha = alphaLight
        redLightView.layer.cornerRadius = 80
        
        
        yellowLightView.alpha = alphaLight
        yellowLightView.layer.cornerRadius =  80
        
        greenLightView.alpha = alphaLight
        greenLightView.layer.cornerRadius =  80
        
        startButton.layer.cornerRadius = 15
    }
    
    @IBAction func pressButton(_ sender: UIButton) {
        startButton.setTitle("Next", for: .normal)
        
        if redLightView.alpha == yellowLightView.alpha {
            redLightView.alpha = CGFloat(MAXFLOAT)
            greenLightView.alpha = alphaLight
        } else if redLightView.alpha > alphaLight &&
                    yellowLightView.alpha == greenLightView.alpha {
            yellowLightView.alpha = CGFloat(MAXFLOAT)
            redLightView.alpha = alphaLight
            
        } else if yellowLightView.alpha > alphaLight &&
                    greenLightView.alpha == redLightView.alpha {
            greenLightView.alpha = CGFloat(MAXFLOAT)
            yellowLightView.alpha = alphaLight
        }
    }
}


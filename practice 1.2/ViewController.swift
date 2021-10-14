//
//  ViewController.swift
//  practice 1.2
//
//  Created by Артур Петин on 13.10.2021.
//

import UIKit

enum Light {
    case redLight
    case yellowLight
    case greenLight
}

class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    private var firstLight = Light.redLight
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
        
        redLight.alpha = 0.5
        yellowLight.alpha = 0.5
        greenLight.alpha = 0.5
    }
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.height / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.height / 2
        greenLight.layer.cornerRadius = greenLight.frame.height / 2
    }
 
    @IBAction func startButtonPressed() {
        if startButton.currentTitle == "Start" {
        startButton.setTitle("Next", for: .normal)
        }
        
        switch firstLight {
        case .redLight:
            greenLight.alpha = 0.5
            redLight.alpha = 1
            firstLight = Light.yellowLight
        case .yellowLight:
            redLight.alpha = 0.5
            yellowLight.alpha = 1
            firstLight = Light.greenLight
        case .greenLight:
            yellowLight.alpha = 0.5
            greenLight.alpha = 1
            firstLight = Light.redLight
        }
    }
    
}


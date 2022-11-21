//
//  ViewController.swift
//  home 2
//
//  Created by Sergey on 21.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    enum CurrentLight {
        case red, yellow, green
    }
    
    @IBOutlet var redLabel: UIView!
    @IBOutlet var yellowLabel: UIView!
    @IBOutlet var greenLabel: UIView!
    
    @IBOutlet var nextButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightOn: CGFloat = 1
    private let lightOff: CGFloat = 0.2
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLabel.alpha = lightOff
        yellowLabel.alpha = lightOff
        greenLabel.alpha = lightOff
    }
    
    // Динамические размеры кнопок и тд
    
    override func viewWillLayoutSubviews() {
        redLabel.layer.cornerRadius = redLabel.frame.width / 2
        yellowLabel.layer.cornerRadius = yellowLabel.frame.width / 2
        greenLabel.layer.cornerRadius = greenLabel.frame.width / 2
    }
    
    @IBAction func startButton() {
        
        nextButton.setTitle("NEXT", for: .normal)
        
        switch currentLight {
            case .red:
                greenLabel.alpha = lightOff
                redLabel.alpha = lightOn
                currentLight = .yellow
            case .yellow:
                redLabel.alpha = lightOff
                yellowLabel.alpha = lightOn
                currentLight = .green
            case .green:
                greenLabel.alpha = lightOn
                yellowLabel.alpha = lightOff
                currentLight = .red
        }
    }
}


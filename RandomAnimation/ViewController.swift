//
//  ViewController.swift
//  RandomAnimation
//
//  Created by Alexandr Baranov on 07.11.2023.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    @IBOutlet weak var springAnimationView: SpringView!
    
    @IBOutlet weak var presetLabel: SpringLabel!
    @IBOutlet weak var curveLabel: SpringLabel!
    @IBOutlet weak var forceLabel: SpringLabel!
    @IBOutlet weak var durationLabel: SpringLabel!
    @IBOutlet weak var delayLabel: SpringLabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Hello"
    }
    
    
    @IBAction func runButtonTapped(_ sender: SpringButton) {
        
    }
    
}

//let layer0 = CAGradientLayer()
//layer0.colors = [
//UIColor(red: 0.059, green: 0.125, blue: 0.153, alpha: 1).cgColor,
//UIColor(red: 0.125, green: 0.227, blue: 0.263, alpha: 1).cgColor,
//UIColor(red: 0.173, green: 0.325, blue: 0.392, alpha: 1).cgColor
//]
//
//layer0.locations = [0, 0.5, 1]
//layer0.startPoint = CGPoint(x: 0.25, y: 0.5)
//layer0.endPoint = CGPoint(x: 0.75, y: 0.5)
//layer0.frame = view.bounds

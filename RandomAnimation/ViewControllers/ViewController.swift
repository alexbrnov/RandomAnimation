//
//  ViewController.swift
//  RandomAnimation
//
//  Created by Alexandr Baranov on 07.11.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet weak var springAnimationView: SpringView!
    
    @IBOutlet weak var presetLabel: SpringLabel!
    @IBOutlet weak var curveLabel: SpringLabel!
    @IBOutlet weak var forceLabel: SpringLabel!
    @IBOutlet weak var durationLabel: SpringLabel!
    @IBOutlet weak var delayLabel: SpringLabel!
    
    // MARK: - Private Properties
    private var currentPreset = Animation.getAnimation()
    private var nextPreset: Animation!
    
    // MARK: - IB Actions
    @IBAction func runButtonTapped(_ sender: SpringButton) {
        nextPreset = Animation.getAnimation()
        setupAnimation()
        setupLabels()
        presetLabel.text = currentPreset.preset
        sender.setTitle("Next \(nextPreset.preset)", for: .normal)
        
        currentPreset = nextPreset
    }
    
    // MARK: - Private Methods
    private func setupAnimation() {
        setupViewBackground(for: springAnimationView)
        springAnimationView.animation = currentPreset.preset
        springAnimationView.curve = currentPreset.curve
        springAnimationView.force = currentPreset.force
        springAnimationView.duration = currentPreset.duration
        springAnimationView.delay = currentPreset.delay
        springAnimationView.animate()
    }
    
    private func setupLabels() {
        curveLabel.text = currentPreset.curve
        forceLabel.text = String(currentPreset.force)
        durationLabel.text = String(currentPreset.duration)
        delayLabel.text = String(currentPreset.delay)
    }
    
    private func setupViewBackground(for view: SpringView) {
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.colors = [
            UIColor(
                red: CGFloat.random(in: 0...1),
                green: CGFloat.random(in: 0...1),
                blue: CGFloat.random(in: 0...1),
                alpha: 1
            ).cgColor,
            UIColor(
                red: CGFloat.random(in: 0...1),
                green: CGFloat.random(in: 0...1),
                blue: CGFloat.random(in: 0...1),
                alpha: 1
            ).cgColor
        ]

        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        
        gradientLayer.frame = view.bounds
        
        view.layer.insertSublayer(gradientLayer, at: 0)
        view.layer.addSublayer(gradientLayer)
    }
}



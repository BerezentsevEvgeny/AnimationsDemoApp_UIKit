//
//  ViewController.swift
//  AnimationsTest
//
//  Created by Евгений Березенцев on 04.08.2021.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var animationTextLabel: SpringLabel!
    
    private let dataManager = DataManager.shared
    private var allAnimations = [Animation]()
    private var currentAnimation: Animation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    @IBAction func nextAnimationButtonTapped(_ sender: SpringButton) {
        performAnimations()
        sender.setTitle(currentAnimation.preset, for: .normal)
    }
    
    private func setup() {
        allAnimations = dataManager.getAnimations()
        currentAnimation = allAnimations.first
        animationTextLabel.text = currentAnimation.description
    }
    
    private func performAnimations() {
        animationView.animation = currentAnimation.preset
        animationView.duration = CGFloat(currentAnimation.duration)
        animationView.velocity = CGFloat(currentAnimation.velocity)
        animationView.damping = CGFloat(currentAnimation.damping)
        animationView.delay = CGFloat(currentAnimation.delay)
        animationView.animate()
        allAnimations.shuffle()
        currentAnimation = allAnimations.first
        animationTextLabel.text = currentAnimation.description
    }
    
    
    

    

    
    

    
    
}




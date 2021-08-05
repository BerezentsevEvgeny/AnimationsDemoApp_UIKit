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
    
    private let allAnimations = Animation.getAnimations()
    private var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGroupedBackground
        animationTextLabel.text = allAnimations[counter].description
    }
    
    @IBAction func nextAnimationButtonTapped(_ sender: SpringButton) {
        sender.animation = "pop"
        sender.duration = 0.3
        sender.damping = 0.4
        sender.animate()
        let currentAnimation = allAnimations[counter]
        animationTextLabel.text = allAnimations[counter].description
        animationView.animation = currentAnimation.preset
        animationView.duration = CGFloat(currentAnimation.duration)
        animationView.velocity = CGFloat(currentAnimation.velocity)
        animationView.damping = CGFloat(currentAnimation.damping)
        animationView.delay = CGFloat(currentAnimation.delay)
        animationView.animate()
        counter += 1
        sender.setTitle("Run \(allAnimations[counter].preset)", for: .normal)
    }


}




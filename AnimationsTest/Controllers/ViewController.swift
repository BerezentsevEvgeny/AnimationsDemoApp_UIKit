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
    
    private var allAnimations = [Animation]()
    private var currentAnimation: Animation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    @IBAction func nextAnimationButtonTapped(_ sender: SpringButton) {
        animationView.animation = currentAnimation.name
        animationView.duration = CGFloat(currentAnimation.duration)
        animationView.animate()
        allAnimations.shuffle()
        currentAnimation = allAnimations.first
        sender.setTitle(currentAnimation.name, for: .normal)
        animationTextLabel.text = currentAnimation.description
    }
    
    func setup() {
        allAnimations = Animation.getAnimations()
        currentAnimation = allAnimations.first
        animationTextLabel.text = currentAnimation.description
    }
    

    

    
    

    
    
}




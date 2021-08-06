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
    
    private var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGroupedBackground
        animationTextLabel.text = animation.description
    }
    
    @IBAction func nextAnimationButtonTapped(_ sender: SpringButton) {
        animationTextLabel.text = animation.description
        
        sender.animation = "pop"
        sender.duration = 0.3
        sender.damping = 0.4
        sender.animate()

        animationView.animation = animation.preset
        animationView.duration = CGFloat(animation.duration)
        animationView.velocity = CGFloat(animation.velocity)
        animationView.damping = CGFloat(animation.damping)
        animationView.delay = CGFloat(animation.delay)
        animationView.animate()
        
        animation = Animation.getAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }


}




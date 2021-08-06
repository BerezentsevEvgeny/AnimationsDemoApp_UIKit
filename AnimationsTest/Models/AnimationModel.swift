//
//  AnimationModel.swift
//  AnimationsTest
//
//  Created by Евгений Березенцев on 04.08.2021.
//

import Foundation

struct Animation {
    let preset: String
    let duration: Float
    let velocity: Float
    let damping: Float
    let delay: Float
    
    var description: String {
        """
        preset: \(preset)
        duration: \(round(duration * 10) / 10)
        velocity: \(round(velocity * 10) / 10)
        damping: \(round(damping * 10) / 10)
        delay: \(String(format: "%.02f", delay))
        """
    }
    
    static func getAnimation() -> Animation {
        Animation(preset: DataManager.shared.animationPresets.randomElement()?.rawValue ?? "pop",
                  duration: Float.random(in: 0.5...1),
                  velocity: Float.random(in: 0.2...0.4),
                  damping: Float.random(in: 0.4...0.6),
                  delay: Float.random(in: 0.1...0.2))
    }
    
    
}

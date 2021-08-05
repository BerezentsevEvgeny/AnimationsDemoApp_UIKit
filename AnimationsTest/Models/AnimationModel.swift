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
        delay: \(round(delay * 10) / 10)
        """
    }
    
    
}

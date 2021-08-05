//
//  DataManager.swift
//  AnimationsTest
//
//  Created by Евгений Березенцев on 05.08.2021.
//

import Spring

class DataManager {
    static let shared = DataManager()
    
    func getAnimations() -> [Animation]{
        var animations: [Animation] = []
        Spring.AnimationPreset.allCases.forEach { animation in
            animations.append(Animation(preset: animation.rawValue,
                                        duration: Float.random(in: 0.5...1),
                                        velocity: Float.random(in: 0.1...0.5),
                                        damping: Float.random(in: 0.1...0.5),
                                        delay: Float.random(in: 0.1...0.3)))
        }
        return animations
    }
    
    private init() {}
}

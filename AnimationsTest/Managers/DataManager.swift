//
//  DataManager.swift
//  AnimationsTest
//
//  Created by Евгений Березенцев on 05.08.2021.
//

import Spring

class DataManager {
    static let shared = DataManager()
    
    var animationPresets: [Animation] {
        var animations: [Animation] = []
        Spring.AnimationPreset.allCases.forEach { animation in
            animations.append(Animation(preset: animation.rawValue,
                                        duration: 0.9,
                                        velocity: 0.2,
                                        damping: 0.6,
                                        delay: 0.1))
        }
        return animations.shuffled()
    }
    
    private init() {}
}

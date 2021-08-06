//
//  DataManager.swift
//  AnimationsTest
//
//  Created by Евгений Березенцев on 05.08.2021.
//

import Spring

class DataManager {
    static let shared = DataManager()
    
    let animationPresets: [Spring.AnimationPreset] = Spring.AnimationPreset.allCases
    
    private init() {}
}

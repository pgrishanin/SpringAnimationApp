//
//  AnimationSettings.swift
//  SpringAnimationApp
//
//  Created by Pavel Grishanin on 10.11.2020.
//

import Spring

struct AnimationSettings  {
    let preset: Spring.AnimationPreset
    let curve: Spring.AnimationCurve
    let force: Double
    let duration: Double
    let delay:  Double
    
    var description: String {
        """
preset: \(preset.rawValue)
curve: \(curve)
force: \(roundedDouble(value: force))
duration: \(roundedDouble(value: duration))
delay: \(roundedDouble(value: delay))
"""
    }
    
    private func roundedDouble(value: Double) -> String {
        String(format: "%.2f", value)
    }
}

extension AnimationSettings {
    static func getRandomAnimationSettings() -> AnimationSettings {
        AnimationSettings(
            preset: AnimationSettingsService.animations.randomElement() ?? Spring.AnimationPreset.fadeIn,
            curve: AnimationSettingsService.curves.randomElement() ?? Spring.AnimationCurve.easeIn,
            force: Double.random(in: 0.0...2.0),
            duration: Double.random(in: 0.0...2.0),
            delay: Double.random(in: 0.0...2.0)
        )
    }
}

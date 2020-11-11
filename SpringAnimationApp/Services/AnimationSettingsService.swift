//
//  AnimationSettingsService.swift
//  SpringAnimationApp
//
//  Created by Pavel Grishanin on 11.11.2020.
//

import Spring

class AnimationSettingsService {
    static let animations: [Spring.AnimationPreset] = [
        .fadeIn, .fadeInDown, .fadeOut, .fadeOutIn,
        .morph, .fall, .flash, .shake, .slideDown,
        .swing, .wobble, .zoomIn, .zoomOut
    ]
    
    static let curves: [Spring.AnimationCurve] = [
        .easeIn, .easeInOut, .easeInExpo, .easeInOutCirc,
        .easeInQuad, .easeOutBack, .linear, .spring,
        .easeOutSine
    ]
}

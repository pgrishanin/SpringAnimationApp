//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by Pavel Grishanin on 10.11.2020.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var animatedView: SpringView!
    @IBOutlet var settingsLabel: UILabel!
    
    private var nextAnimationSettings = AnimationSettings.getRandomAnimationSettings()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func runAnimation(_ sender: UIButton) {
        settingsLabel.text = nextAnimationSettings.description
        runAnimation()
        
        nextAnimationSettings = AnimationSettings.getRandomAnimationSettings()
        
        sender.setTitle("Run \(nextAnimationSettings.preset.rawValue)", for: .normal)
    }
    
    private func runAnimation() {
        animatedView.animation = nextAnimationSettings.preset.rawValue
        animatedView.curve = nextAnimationSettings.curve.rawValue
        animatedView.force = CGFloat(nextAnimationSettings.force)
        animatedView.duration = CGFloat(nextAnimationSettings.duration)
        animatedView.delay = CGFloat(nextAnimationSettings.delay)
        animatedView.animate()
    }
}

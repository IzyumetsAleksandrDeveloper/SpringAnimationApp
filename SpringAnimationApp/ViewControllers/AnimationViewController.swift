//
//  AnimationViewController.swift
//  SpringAnimationApp
//
//  Created by Izyumets Aleksandr on 13.07.2022.
//

import Spring

class AnimationViewController: UIViewController {

    var animation = Animation.getAnimation()
            
    @IBOutlet var springView: SpringView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabels()
    }

    @IBAction func startAnimationButton(_ sender: SpringButton) {
        updateLabels()
        
        springView.animation = animation.animationType
        springView.curve = animation.curve
        springView.force = CGFloat(animation.force)
        springView.duration = CGFloat(animation.duration)
        springView.delay = CGFloat(animation.delay)
        springView.animate()
        
        animation = Animation.getAnimation()
        sender.setTitle("Run \(animation.animationType ?? "")", for: .normal)
    }
    
    private func updateLabels() {
        presetLabel.text = animation.animationType
        curveLabel.text = animation.curve
        forceLabel.text = String(animation.force)
        durationLabel.text = String(animation.duration)
        delayLabel.text = String(animation.delay)
    }
}


//
//  ViewController.swift
//  SpringAnimation
//
//  Created by Егоров Михаил on 30.07.2022.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet var coreAnimationView: UIView!
    @IBOutlet var springAnimationView: SpringView!
    
    private var animationStarted = false
    
    @IBAction func runCoreAnimation(_ sender: UIButton) {
        sender.pulsate()
        
        UIView.animate(
            withDuration: 0.5,
            delay: 0,
            //usingSpringWithDamping: 1,
            //initialSpringVelocity: 1,
            options: [.autoreverse, .repeat]) {
                
                if !self.animationStarted {
                self.coreAnimationView.frame.origin.x -= 40
                    self.animationStarted.toggle()
                }
            }
        
        
    }
    @IBAction func runSoringAnimation(_ sender: SpringButton) {
        springAnimationView.animation = "morph"
        springAnimationView.curve = "easeIn"
        //springAnimationView.force = 2
        springAnimationView.duration = 1
        springAnimationView.animate()
        
        sender.animation = "wobble"
        sender.animate()
    }
    
}


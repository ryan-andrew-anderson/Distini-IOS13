//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    var timer = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
        if sender.currentTitle == storyBrain.stories[storyBrain.storyNumber].choice1 {
            storyLabel.text = "You go about your day and forget your enconter with the man"
        } else {
            storyLabel.text = "You offer the man your lunch and $20. The man expresses his thanks and you feel a little but better becuase you improved someones life today. "
        }
        sender.isSelected = true
        timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        choice1Button.isSelected = false
        choice2Button.isSelected = false
        
        storyLabel.text = storyBrain.stories[storyBrain.storyNumber].title
        choice1Button.setTitle(storyBrain.stories[storyBrain.storyNumber].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[storyBrain.storyNumber].choice2, for: .normal)
    }
}

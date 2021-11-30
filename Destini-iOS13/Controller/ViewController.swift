//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Modified by Ryan A. starting on 11/22/2021.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(0)
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
        if sender.currentTitle == storyBrain.stories[storyBrain.storyNumber].choice1 {
            storyBrain.storyNumber = storyBrain.stories[storyBrain.storyNumber].choice1Destination
        } else {
            storyBrain.storyNumber = storyBrain.stories[storyBrain.storyNumber].choice2Destination
            
        }
        updateUI(storyBrain.storyNumber)
    }
    
    func updateUI(_ choice: Int) {
        storyLabel.text = storyBrain.stories[choice].title
        choice1Button.setTitle(storyBrain.stories[choice].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[choice].choice2, for: .normal)
    }
}

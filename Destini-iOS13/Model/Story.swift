//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    var title : String
    var choice1 : String
    var choice2 : String
    var choice1Destination : Int
    var choice2Destination : Int
    
    init(Title : String, Choice1: String, Choice2: String, Choice1Result: Int, Choice2Result: Int) {
        
        self.title = Title
        self.choice1 = Choice1
        self.choice2 = Choice2
        self.choice1Destination = Choice1Result
        self.choice2Destination = Choice2Result
    }

}

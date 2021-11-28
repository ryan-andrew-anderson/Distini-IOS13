//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Modified by Ryan A. starting on 11/24/2021.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    var title : String
    var choice1 : String
    var choice2 : String
    var choice1Destination : Int
    var choice2Destination : Int
    
    init(Title : String, Choice1: String,Choice1Destination: Int, Choice2: String, Choice2Destination: Int) {
        
        self.title = Title
        self.choice1 = Choice1
        self.choice2 = Choice2
        self.choice1Destination = Choice1Destination
        self.choice2Destination = Choice2Destination
    }
}

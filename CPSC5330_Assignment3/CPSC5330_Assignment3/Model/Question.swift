//
//  Question.swift
//  CPSC5330_Assignment3
//
//  Created by Jordan Wrape on 6/18/23.
//

import Foundation

struct Question {
    
    init(_ ques: String, _ o_one:String, _ o_two: String) {
        question = ques
        option_one = o_one
        option_two = o_two
    }
    
    var question: String
    var option_one: String
    var option_two: String
    
}

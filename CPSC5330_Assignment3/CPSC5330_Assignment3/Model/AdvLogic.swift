//
//  AdvLogic.swift
//  CPSC5330_Assignment3
//
//  Created by Jordan Wrape on 6/18/23.
//

import Foundation

struct AdvLogic
{
    var questionIndex : Int = 0
    
    let question = [
        Question("Enter at your own risk!","Yes","Skip Castle"),
        Question("Choose your path","Left","Right"),
        Question("Select a Chest","BoxLeft","BoxRight"),
        Question("Select a Gem","GemLeft","GemRight")
    ]
    
    
    func getNextQuestionRoot() -> String
    {
        return question[questionIndex].question
    }
    
    func getNextQuestionOne() -> String
    {
        return question[questionIndex + 1].question
    }
    
    func getNextQuestionTwo() -> String
    {
        return question[questionIndex + 2].question
    }
    
    func getNextQuestionThree() -> String
    {
        return question[questionIndex + 3].question
    }
    
    //===================================================
    
    func getChoiceOneROOT() -> String
    {
        return question[questionIndex].option_one
    }
    
    func getChoiceTwoROOT() -> String
    {
        return question[questionIndex].option_two
    }
    
    func getChoiceOneONE() -> String
    {
        return question[questionIndex + 1].option_one
    }
    
    func getChoiceTwoONE() -> String
    {
        return question[questionIndex + 1].option_two
    }
    
    func getChoiceOneTWO() -> String
    {
        return question[questionIndex + 2].option_one
    }
    
    func getChoiceTwoTWO() -> String
    {
        return question[questionIndex + 2].option_two
    }
    
    func getChoiceOneTHREE() -> String
    {
        return question[questionIndex + 3].option_one
    }
    
    func getChoiceTwoTHREE() -> String
    {
        return question[questionIndex + 3].option_two
    }
}

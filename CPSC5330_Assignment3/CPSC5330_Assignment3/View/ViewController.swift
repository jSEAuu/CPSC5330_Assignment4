//
//  ViewController.swift
//  CPSC5330_Assignment3
//
//  Created by Jordan Wrape on 6/17/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var background: UIImageView!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var optionOne: UIButton!
    
    @IBOutlet weak var optionTwo: UIButton!
    
    var advlogic = AdvLogic() 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }

    @IBAction func answerSubmitted(_ sender: UIButton) {
        let answerClicked = sender.titleLabel!.text!
        
        if answerClicked == "Yes"
        {
            questionLabel.text = advlogic.getNextQuestionOne()
            background.image = UIImage(named: "twoDoors")
            optionOne.setTitle(advlogic.getChoiceOneONE(), for: .normal)
            optionTwo.setTitle(advlogic.getChoiceTwoONE(), for: .normal)
        }
        else if answerClicked == "Left"
        {
            questionLabel.text = advlogic.getNextQuestionTwo()
            background.image = UIImage(named: "twoChests")
            optionOne.setTitle(advlogic.getChoiceOneTWO(), for: .normal)
            optionTwo.setTitle(advlogic.getChoiceTwoTWO(), for: .normal)
        }
        else if answerClicked == "Right"
        {
            questionLabel.text = advlogic.getNextQuestionThree()
            background.image = UIImage(named: "twoGems")
            optionOne.setTitle(advlogic.getChoiceOneTHREE(), for: .normal)
            optionTwo.setTitle(advlogic.getChoiceTwoTHREE(), for: .normal)
        }
        else if (answerClicked == "BoxRight" || answerClicked == "GemLeft")
         {
            questionLabel.text = ""
            background.image = UIImage(named: "winnerScreen")
            optionOne.isHidden = true
            optionTwo.isHidden = true
         }
        else
        {
            questionLabel.text = ""
            background.image = UIImage(named: "GameOver")
            optionOne.isHidden = true
            optionTwo.isHidden = true
        }
    }
    
    @objc func updateUI() {
        questionLabel.text = advlogic.getNextQuestionRoot()
        background.image = UIImage(named: "frontCastle")
        optionOne.setTitle(advlogic.getChoiceOneROOT(), for: .normal)
        optionTwo.setTitle(advlogic.getChoiceTwoROOT(), for: .normal)
    }
}


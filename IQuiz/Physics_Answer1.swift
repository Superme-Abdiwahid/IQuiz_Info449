//
//  Physics_Answer1.swift
//  IQuiz
//
//  Created by stlp on 5/15/22.
//

import Foundation
import UIKit
class Physics_Answer1: UIViewController{
    var chooseCorrectAnswer = false;
    var chooseanswerA = false;
    var totalCorrect = 0;
    var chooseanswerb = false;
    var chooseanswerc = false;
    var chooseanswerd = false;
    var answerChoices: [String] = ["A", "B", "C", "D"]
    var options: [String] = ["You choose Answer A", "You choose Answer B",
                            "You choose Answer C", "You choose Answer D"]
    var displayResult: [String] = ["Answer Incorrect. Actual Answer is C", "Correct! Congrats"]
    @IBOutlet weak var Abdiwahid: UILabel!
    @IBOutlet weak var Answer_Result: UILabel!
    @IBOutlet weak var Use_Answer: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        Abdiwahid.text = "Question 1 Result"
        if(chooseanswerA){
            Use_Answer.text = options[0]
            Answer_Result.text = displayResult[0]
        }else if(chooseanswerb){
            Use_Answer.text = options[1]
            Answer_Result.text = displayResult[0]
        }else if(chooseanswerc){
            Use_Answer.text = options[2]
            Answer_Result.text = displayResult[1]
        }else{
            Use_Answer.text = options[3]
            Answer_Result.text = displayResult[0]
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier{
    case Optional("Finish_Science"):
        let choice = segue.destination as! Science_Result
            choice.chooseCorrectAnswer = chooseCorrectAnswer
            
            break;
        default:
            print("And error occured")
    }
    
     
}
}

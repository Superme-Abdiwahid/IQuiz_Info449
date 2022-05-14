//
//  Math_Answers.swift
//  IQuiz
//
//  Created by stlp on 5/12/22.
//

import Foundation
import UIKit
class Math_Answers: UIViewController{
    var chooseCorrectAnswer = false;
    var chooseanswerA = false;
    var chooseanswerb = false;
    var chooseanswerc = false;
    var chooseanswerd = false;
    var answerChoices: [String] = ["A", "B", "C", "D"]
    var options: [String] = ["You choose Answer A", "You choose Answer B",
                            "You choose Answer C", "You choose Answer D"]
    var displayResult: [String] = ["Answer Incorrect. Actual Answer is C 2", "Correct! Congrats"]
    var totalCorrect: Int = 0;
    override func viewDidLoad() {
        Answer_Result.text = "Question 1 Result"
        if(chooseanswerA){
            User_Answer.text = options[0]
            Answer_Result.text = displayResult[0]
        }else if(chooseanswerb){
            User_Answer.text = options[1]
            Answer_Result.text = displayResult[0]
        }else if(chooseanswerc){
            User_Answer.text = options[2]
            Answer_Result.text = displayResult[1]
        }else{
            User_Answer.text = options[3]
            Answer_Result.text = displayResult[0]
        }
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier
        {
        case Optional("Math_Question2"):
            print("This is fucken awesome")
            let secondVC = segue.destination as! Math_Question_Quiz2
            if(chooseCorrectAnswer){
                secondVC.totalCorrect = totalCorrect + 1
            }else{
                secondVC.totalCorrect = totalCorrect;
            }
            break;
        default:
            print("I have no idea what segue you're using")
        }
    }
    @IBOutlet weak var Answer_Result: UILabel!
    @IBOutlet weak var Titles: UILabel!
    @IBOutlet weak var User_Answer: UILabel!
}

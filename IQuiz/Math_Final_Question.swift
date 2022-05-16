//
//  Math_Final_Question.swift
//  IQuiz
//
//  Created by stlp on 5/12/22.
//

import Foundation
import UIKit
class Math_Final_Question: UIViewController{
    var chooseanswerA = false;
    var total_Questions_Correct = 0;
    var chooseanswerb = false;
    var chooseanswerc = false;
    var chooseanswerd = false;
    var totalCorrect = 0;
    var answerChoices: [String] = ["A", "B", "C", "D"]
    var options: [String] = ["You choose Answer A", "You choose Answer B",
                            "You choose Answer C", "You choose Answer D"]
    @IBOutlet weak var Titles: UILabel!
    @IBOutlet weak var Answer_Result: UILabel!
    @IBOutlet weak var User_Answer: UILabel!
    var displayResult: [String] = ["Answer Incorrect. Actual Answer is D 12", "Correct! Congrats"]
    override func viewDidLoad() {
        super.viewDidLoad()
        Titles.text = "Question 3 result"
        if(chooseanswerA){
            User_Answer.text = options[0]
            Answer_Result.text = displayResult[0]
        }else if(chooseanswerb){
            User_Answer.text = options[1]
            Answer_Result.text = displayResult[0]
        }else if(chooseanswerc){
            User_Answer.text = options[2]
            Answer_Result.text = displayResult[0]
        }else{
            User_Answer.text = options[3]
            Answer_Result.text = displayResult[1]
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier
        {
        case Optional("Finish_Quiz"):
            let secondVC = segue.destination as! Math_Results
            secondVC.total_Questions_Correct = total_Questions_Correct;
            break;
        default:
            print("I have no idea what segue you're using")
        }
    }
}

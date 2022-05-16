//
//  Super_Hero_Answer.swift
//  IQuiz
//
//  Created by stlp on 5/15/22.
//

import Foundation
import UIKit
class Super_Hero_Answer: UIViewController{
    var chooseCorrectAnswer = false;
    var chooseanswerA = false;
    var chooseanswerb = false;
    var chooseanswerc = false;
    var chooseanswerd = false;
    var answerChoices: [String] = ["A", "B", "C", "D"]
    var options: [String] = ["You choose Answer A", "You choose Answer B",
                            "You choose Answer C", "You choose Answer D"]
    var displayResult: [String] = ["Answer Incorrect. Actual Answer is B", "Correct! Congrats"]
    @IBOutlet weak var Abdiwahid: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        super.viewDidLoad()
        Abdiwahid.text = "Question 1 Result"
        if(chooseanswerA){
            Users_Answer.text = options[0]
            Display_Quiz_Result.text = displayResult[0]
        }else if(chooseanswerb){
            Users_Answer.text = options[1]
            Display_Quiz_Result.text = displayResult[1]
        }else if(chooseanswerc){
            Users_Answer.text = options[2]
            Display_Quiz_Result.text = displayResult[0]
        }else{
            Users_Answer.text = options[3]
            Display_Quiz_Result.text = displayResult[0]
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier
        {
        case Optional("SuperHero_Finish"):
            print("Abdiwahid is the best")
            let secondVC = segue.destination as! Super_Hero_Results
            secondVC.chooseCorrectAnswer = chooseanswerb
          //  secondVC.total_Questions_Correct = total_Questions_Correct;
            break;
        default:
            print("I have no idea what segue you're using")
        }
    }
    @IBOutlet weak var Finish_Button: UIButton!
    @IBOutlet weak var Display_Quiz_Result: UILabel!
    @IBOutlet weak var Users_Answer: UILabel!
}

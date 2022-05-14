//
//  Math_Question3.swift
//  IQuiz
//
//  Created by stlp on 5/10/22.
//

import Foundation
import UIKit
class Math_Question3: UIViewController{
    private var String_Question_1 = [String]()
    private var Question1_Possible_Answers = [Int]()
    public var totalCorrect: Int = 0;
    public var chooseCorrectAnswer: Bool = false;
    public var chooseAnswerA = false;
    public var chooseAnswerB = false;
    public var chooseAnswerC = false;
    public var chooseAnswerD = false;
    override func viewDidLoad() {
        super.viewDidLoad()
        buildUpQuestions()
        print("Total = " + String(totalCorrect))
        Answer_C.setTitle("C. " + String(Question1_Possible_Answers[2]), for: .normal)
        Answer_A.setTitle("A. " + String(Question1_Possible_Answers[0]), for: .normal)
        Question_3.text = String_Question_1[0]
        Answer_B.setTitle("B. " +  String(Question1_Possible_Answers[1]), for: .normal)
        Answer_D.setTitle("D. " +  String(Question1_Possible_Answers[3]), for: .normal)
    }
    @IBOutlet weak var Next_Button: UIButton!
    @IBAction func Choose_D(_ sender: Any) {
        chooseCorrectAnswer = false;
        chooseAnswerA = false;
         chooseAnswerB = false;
        chooseAnswerC = false;
         chooseAnswerD = true;
        chooseCorrectAnswer = true;
    }
    @IBAction func Choose_C(_ sender: Any) {
        chooseCorrectAnswer = false;
        chooseAnswerA = false;
         chooseAnswerB = false;
        chooseAnswerC = true;
         chooseAnswerD = false;
        chooseCorrectAnswer = false;
    }
    @IBAction func Choose_B(_ sender: Any) {
        chooseCorrectAnswer = false;
        chooseAnswerA = false;
         chooseAnswerB = true;
        chooseAnswerC = false;
         chooseAnswerD = false;
    }
    @IBAction func Choose_A(_ sender: Any) {
        chooseCorrectAnswer = false;
        chooseAnswerA = true;
         chooseAnswerB = false;
        chooseAnswerC = false;
         chooseAnswerD = false;
    }
    @IBOutlet weak var Text: UILabel!
    
    func buildUpQuestions(){
        String_Question_1.append("What is The square root of 44")
        Question1_Possible_Answers.append(2)
        Question1_Possible_Answers.append(4)
        Question1_Possible_Answers.append(1)
        Question1_Possible_Answers.append(12)
    }
    @IBOutlet weak var Answer_B: UIButton!
    @IBOutlet weak var Answer_A: UIButton!
    @IBOutlet weak var Question_3: UILabel!
    @IBOutlet weak var Answer_C: UIButton!
    @IBOutlet weak var Answer_D: UIButton!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier{
    case Optional("Math_Finals"):
        print("AND WERE DONE")
        let choice = segue.destination as! Math_Final_Question
            choice.chooseanswerA = chooseAnswerA
           choice.chooseanswerc = chooseAnswerC
           choice.chooseanswerb = chooseAnswerB
            choice.chooseanswerd = chooseAnswerD
            if(chooseCorrectAnswer){
                choice.total_Questions_Correct = totalCorrect + 1
            }else{
               choice.total_Questions_Correct = totalCorrect;
            }
            break;
        default:
            print("And error occured")
    }
    
     
}
}

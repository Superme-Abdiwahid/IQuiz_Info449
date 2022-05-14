//
//  Math_Questions.swift
//  IQuiz
//
//  Created by stlp on 5/10/22.
//

import Foundation
import UIKit
class Math_Questions: UIViewController{
    var controller = Math_Question_Quiz2.self
    private var String_Question_1 = [String]()
    private var String_Question_2 = [String]()
    private var String_Question_3 = [String]()
    private var Question1_Possible_Answers = [Int]()
    private var Question2_Possible_Answers = [Int]()
    var chooseAnswerA = false;
    var chooseAnswerB = false;
    var chooseAnswerC = false;
    var chooseAnswerD = false;
    private var userChooseAnswer: Bool = false;
    var vcOne : Bool = true
    
    @IBOutlet weak var Next_Question: UIButton!
    func buildUpQuestions(){
        String_Question_1.append("What is 1 + 1")
        Question1_Possible_Answers.append(10)
        Question1_Possible_Answers.append(12)
        Question1_Possible_Answers.append(2)
        Question1_Possible_Answers.append(-5)
        Next_Question.isEnabled = false;
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        buildUpQuestions()
        Answer_C_Access.setTitle("C. " + String(Question1_Possible_Answers[2]), for: .normal)
        Answer_A_Access.setTitle("A. " + String(Question1_Possible_Answers[0]), for: .normal)
        Question1_Label.text = String_Question_1[0]
        Answer_B_Access.setTitle("B. " +  String(Question1_Possible_Answers[1]), for: .normal)
        Answer_D_Access.setTitle("D. " +  String(Question1_Possible_Answers[3]), for: .normal)
    }
    
    @IBAction func Next(_ sender: Any) {
        

    }
    @IBAction func Choose_A(_ sender: Any) {
        userChooseAnswer = false;
        chooseAnswerA = true;
         chooseAnswerB = false;
        chooseAnswerC = false;
         chooseAnswerD = false;
        Next_Question.isEnabled = true;
    }
    
    @IBAction func Choose_B(_ sender: Any) {
        userChooseAnswer = false;
        chooseAnswerB = true;
        chooseAnswerA = false;
       chooseAnswerC = false;
        chooseAnswerD = false;
        Next_Question.isEnabled = true;
    }
    @IBAction func Choose_D(_ sender: Any) {
        userChooseAnswer = false;
        chooseAnswerD = true;
        chooseAnswerB = false;
       chooseAnswerC = false;
        chooseAnswerA = false;
        Next_Question.isEnabled = true;
    }
    
    @IBAction func Choose_C(_ sender: Any) {
        chooseAnswerC = true;
        chooseAnswerB = false;
       chooseAnswerA = false;
        chooseAnswerD = false;
       Next_Question.isEnabled = true;
        userChooseAnswer = true;
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier
        {
        case Optional("math_answer_1"):
            print("abdi suprmee to second")
            let secondVC = segue.destination as! Math_Answers
            secondVC.chooseCorrectAnswer = self.userChooseAnswer
            secondVC.chooseanswerA = chooseAnswerA
            secondVC.chooseanswerc = chooseAnswerC
            secondVC.chooseanswerb = chooseAnswerB
            secondVC.chooseanswerd = chooseAnswerD
            break;
        default:
            print("Error in Segue")
        }
    }
    
    @IBAction func Answer_b_Access(_ sender: Any) {
    }

    @IBOutlet weak var Answer_B_Access: UIButton!
    
    
    @IBOutlet weak var Answer_D_Access: UIButton!
    @IBOutlet weak var Question1_Label: UILabel!
    
    @IBOutlet weak var Answer_A_Access: UIButton!
    
    @IBOutlet weak var Answer_C_Access: UIButton!
}

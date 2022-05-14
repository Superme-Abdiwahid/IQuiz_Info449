//
//  Math_Question_Quiz2.swift
//  IQuiz
//
//  Created by stlp on 5/10/22.
//

import Foundation
import UIKit
class Math_Question_Quiz2: UIViewController{
    private var String_Question_1 = [String]()
    private var String_Question_2 = [String]()
    private var String_Question_3 = [String]()
    private var Question1_Possible_Answers = [Int]()
    public var chooseCorrectAnswer: Bool = false;
    public var totalCorrect: Int = 0;
    var chooseAnswerA = false;
    var chooseAnswerB = false;
    var chooseAnswerC = false;
    var chooseAnswerD = false;
    private var userChooseAnswer: Bool = false;
    var vcOne : Bool = true
    
    func buildUpQuestions(){
        String_Question_1.append("What is 200 / 10")
        Question1_Possible_Answers.append(20)
        Question1_Possible_Answers.append(Int.max)
        Question1_Possible_Answers.append(55)
        Question1_Possible_Answers.append(200)
    }
    @IBAction func Choose_D(_ sender: Any) {
        chooseCorrectAnswer = false;
        chooseAnswerA = false;
         chooseAnswerB = false;
        chooseAnswerC = false;
         chooseAnswerD = true;
        Next_Button.isEnabled = true;
    }
    @IBAction func Choose_C(_ sender: Any) {
        chooseCorrectAnswer = false;
        Next_Button.isEnabled = true;
        userChooseAnswer = false;
        chooseAnswerA = false;
         chooseAnswerB = false;
        chooseAnswerC = true;
         chooseAnswerD = false;
    }
    @IBAction func Choose_A(_ sender: Any) {
        chooseAnswerA = true;
         chooseAnswerB = false;
        chooseAnswerC = false;
         chooseAnswerD = false;
        chooseCorrectAnswer = true;
        Next_Button.isEnabled = true;
    }
    @IBAction func Choose_B(_ sender: Any) {
        chooseCorrectAnswer = false;
        Next_Button.isEnabled = true;
        chooseAnswerA = false;
         chooseAnswerB = true;
        chooseAnswerC = false;
         chooseAnswerD = false;
    }
    @IBOutlet weak var Next_Button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        Next_Button.isEnabled = false;
        if(chooseCorrectAnswer){
            totalCorrect += 1
        }
        print("THIS IS THE ANSWER", totalCorrect)

        buildUpQuestions()
        Asnwer_C.setTitle("C. " + String(Question1_Possible_Answers[2]), for: .normal)
        Answer_A.setTitle("A. " + String(Question1_Possible_Answers[0]), for: .normal)
        Text.text = String_Question_1[0]
        Answer_B.setTitle("B. " +  String(Question1_Possible_Answers[1]), for: .normal)
        Answer_D.setTitle("D. " +  String(Question1_Possible_Answers[3]), for: .normal)
    }
    @IBOutlet weak var Answer_A: UIButton!
    @IBOutlet weak var Answer_B: UIButton!
    @IBOutlet weak var Asnwer_C: UIButton!
    @IBOutlet weak var Answer_D: UIButton!
    @IBOutlet weak var Text: UILabel!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier
        {
        case Optional("question_2_Answer"):
            print("This is fucken awesome")
            let secondVC = segue.destination as! Math_Answer_2
            secondVC.chooseanswerA = chooseAnswerA
            secondVC.chooseanswerc = chooseAnswerC
            secondVC.chooseanswerb = chooseAnswerB
            secondVC.chooseanswerd = chooseAnswerD
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
}

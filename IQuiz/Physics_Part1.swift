//
//  Physics_Part1.swift
//  IQuiz
//
//  Created by stlp on 5/10/22.
//

import Foundation
import UIKit
class Physics_Part1: UIViewController {
    private var String_Question_1 = [String]()
    private var Question1_Possible_Answers = [String]()
    public var totalCorrect: Int = 0;
    public var chooseCorrectAnswer: Bool = false;
    public var chooseAnswerA = false;
    public var chooseAnswerB = false;
    public var chooseAnswerC = false;
    public var chooseAnswerD = false;
    override func viewDidLoad() {
        super.viewDidLoad()
        Next_Question.isEnabled = false;
        Text.text = "What is Physics"
        ArrayFill()
        Answer_C.setTitle("C. " + String(Question1_Possible_Answers[2]), for: .normal)
        Answer_A.setTitle("A. " + String(Question1_Possible_Answers[0]), for: .normal)
        Answer_B.setTitle("B. " +  String(Question1_Possible_Answers[1]), for: .normal)
        Answer_D.setTitle("D. " +  String(Question1_Possible_Answers[3]), for: .normal)
    }
    
    @IBOutlet weak var Next_Question: UIButton!
    @IBAction func Choose_AnswerD(_ sender: Any) {
        Next_Question.isEnabled = true;
        chooseAnswerA = false;
       chooseAnswerB = false;
        chooseAnswerC = false;
        chooseAnswerD = true;
        chooseCorrectAnswer = false;
    }
    @IBAction func Choose_AnswerC(_ sender: Any) {
        Next_Question.isEnabled = true;
        chooseAnswerA = false;
       chooseAnswerB = false;
        chooseCorrectAnswer = true;
        totalCorrect += 1
        chooseAnswerC = true;
        chooseAnswerD = false;
    }
    
    @IBAction func Choose_Answer_B(_ sender: Any) {
        Next_Question.isEnabled = true;
        chooseAnswerA = false;
       chooseAnswerB = true;
        chooseAnswerC = false;
        chooseAnswerD = false;
        chooseCorrectAnswer = false;
    }
    @IBAction func Choose_Answer_A(_ sender: Any) {
        chooseAnswerA = true;
       chooseAnswerB = false;
        chooseAnswerC = false;
        chooseCorrectAnswer = false;
        chooseAnswerD = false;
        Next_Question.isEnabled = true;
    }
    func ArrayFill(){
        Question1_Possible_Answers.append(" A measure of time")
        Question1_Possible_Answers.append(" Calculus")
        Question1_Possible_Answers.append(" A measure of everything")
        Question1_Possible_Answers.append(" A math equation")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier
        {
        case Optional("science_Answer1"):
            let secondVC = segue.destination as! Physics_Answer1
            secondVC.chooseanswerA = chooseAnswerA
            secondVC.chooseanswerc = chooseAnswerC
            secondVC.chooseanswerb = chooseAnswerB
            secondVC.chooseanswerd = chooseAnswerD
            secondVC.chooseCorrectAnswer = chooseCorrectAnswer
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
    
    @IBOutlet weak var Answer_D: UIButton!
    @IBOutlet weak var Answer_C: UIButton!
    @IBOutlet weak var Answer_B: UIButton!
    @IBOutlet weak var Answer_A: UIButton!
    @IBOutlet weak var Text: UILabel!
}

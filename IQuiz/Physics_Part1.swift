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
    override func viewDidLoad() {
        super.viewDidLoad()
        Text.text = "What is Physics"
        ArrayFill()
        Answer_C.setTitle("C. " + String(Question1_Possible_Answers[2]), for: .normal)
        Answer_A.setTitle("A. " + String(Question1_Possible_Answers[0]), for: .normal)
        Answer_B.setTitle("B. " +  String(Question1_Possible_Answers[1]), for: .normal)
        Answer_D.setTitle("D. " +  String(Question1_Possible_Answers[3]), for: .normal)
    }
    
    func ArrayFill(){
        Question1_Possible_Answers.append(" A measure of time")
        Question1_Possible_Answers.append(" Calculus")
        Question1_Possible_Answers.append(" A measure of everything")
        Question1_Possible_Answers.append(" A math equation")
    }
    
    @IBOutlet weak var Answer_D: UIButton!
    @IBOutlet weak var Answer_C: UIButton!
    @IBOutlet weak var Answer_B: UIButton!
    @IBOutlet weak var Answer_A: UIButton!
    @IBOutlet weak var Text: UILabel!
}

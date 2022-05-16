//
//  Question_2.swift
//  IQuiz
//
//  Created by stlp on 5/10/22.
//

import Foundation
import UIKit
class Question_2: UIViewController{
    private var String_Question_1 = [String]()
    private var Question1_Possible_Answers = [Int]()
    public var totalCorrect: Int = 0;
    public var chooseCorrectAnswer: Bool = false;
    
    func ArraysFill(){
        String_Question_1.append("What is The physics")
        Question1_Possible_Answers.append(2)
        Question1_Possible_Answers.append(4)
        Question1_Possible_Answers.append(1)
        Question1_Possible_Answers.append(12)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ArraysFill()
    }
   
 
}

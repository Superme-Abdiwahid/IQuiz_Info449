//
//  Science_Result.swift
//  IQuiz
//
//  Created by stlp on 5/15/22.
//

import Foundation
import UIKit
class Science_Result: UIViewController{
    public var chooseCorrectAnswer = false;
    override func viewDidLoad() {
        print("YES", chooseCorrectAnswer)
        super.viewDidLoad()
        if(chooseCorrectAnswer){
            Quiz_Results.text = "1/1 correct 100%"
        }else{
            Quiz_Results.text = "0/1 correct  0%"
        }
    }
    @IBOutlet weak var Quiz_Results: UILabel!
}

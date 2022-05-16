//
//  Super_Hero_Results.swift
//  IQuiz
//
//  Created by stlp on 5/15/22.
//

import Foundation
import UIKit
class Super_Hero_Results: UIViewController{
    public var chooseCorrectAnswer = false;
    override func viewDidLoad() {
        super.viewDidLoad()
        super.viewDidLoad()
        if(chooseCorrectAnswer){
           Quiz_Results.text = "1/1 correct 100%"
        }else{
            Quiz_Results.text = "0/1 correct  0%"
        }
    }
    @IBOutlet weak var Quiz_Results: UILabel!
}

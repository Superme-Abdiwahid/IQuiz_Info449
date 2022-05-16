//
//  Math_Results.swift
//  IQuiz
//
//  Created by stlp on 5/10/22.
//

import Foundation
import UIKit

class Math_Results: UIViewController{
    public var total_Questions_Correct = 0;

    override func viewDidLoad(){
        super.viewDidLoad()
        var percentage = Double(total_Questions_Correct) / Double(3) * 100.0
        
        Display_Results.text = "You got " + String(total_Questions_Correct) +
        "/" + "3 correct " +  String(Int(percentage)) + "%"
    }
    @IBOutlet weak var Display_Results: UILabel!
}

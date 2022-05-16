//
//  Super_hero_Begin.swift
//  IQuiz
//
//  Created by stlp on 5/15/22.
//

import Foundation
import UIKit
class Super_hero_Begin: UIViewController{
    public var chooseAnswerA = false;
    public var chooseAnswerB = false;
    public var chooseAnswerC = false;
    public var chooseAnswerD = false;
    override func viewDidLoad() {
        Next_Button.isEnabled = false;
        super.viewDidLoad()
    }
    @IBAction func Chose_A(_ sender: Any) {
        Next_Button.isEnabled = true;
        chooseAnswerA = true;
         chooseAnswerB = false;
        chooseAnswerC = false;
         chooseAnswerD = false;
    }
    @IBAction func Chose_B(_ sender: Any) {
        Next_Button.isEnabled = true;
        chooseAnswerA = false;
         chooseAnswerB = true;
        chooseAnswerC = false;
         chooseAnswerD = false;
    }
    @IBAction func ChoseC(_ sender: Any) {
        Next_Button.isEnabled = true;
        chooseAnswerA = false;
         chooseAnswerB = false;
        chooseAnswerC = true;
         chooseAnswerD = false;
    }
    @IBAction func Chose_D(_ sender: Any) {
        Next_Button.isEnabled = true;
        chooseAnswerA = false;
         chooseAnswerB = false;
        chooseAnswerC = false;
         chooseAnswerD = true;
    }
    @IBOutlet weak var Next_Button: UIButton!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier
        {
        case Optional("SuperHero_Answer"):
            let secondVC = segue.destination as! Super_Hero_Answer
            secondVC.chooseanswerA = chooseAnswerA
            secondVC.chooseanswerc = chooseAnswerC
            secondVC.chooseanswerb = chooseAnswerB
            secondVC.chooseanswerd = chooseAnswerD
          //  secondVC.chooseCorrectAnswer = chooseCorrectAnswer
            
            break;
        default:
            print("ERRROR IN SEGUE TRY AGAIN")
        }
    }
}

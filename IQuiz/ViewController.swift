//
//  ViewController.swift
//  IQuiz
//
//  Created by stlp on 5/9/22.
//

import UIKit

class ViewController: UIViewController {
    var topics: [String] = ["Math", "Physics", "Superhero"]
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.delegate = self
        TableView.dataSource = self
        
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func Settings(_ sender: Any) {
        let alert = UIAlertController(title: "Settings", message: "Settings go here", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment:
            "Default action"), style: .default, handler: { _ in NSLog("The \"OK\" alert occured.")
        }))
        self.present(alert, animated: true, completion: {
            NSLog("The alert was presented")})
    }
    @IBAction func Setting_Button(_ sender: Any) {
    }
    
    @IBOutlet weak var TableView: UITableView!
    
    

    
}



extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedindex = indexPath.row
        if(selectedindex == 0){
        performSegue(withIdentifier: "show_math", sender: self)
        }else if(selectedindex == 1){
            performSegue(withIdentifier: "physics", sender: self)
        }else{
            performSegue(withIdentifier: "super_hero", sender:  self)
        }
    }
    
}



//func again() -> UIViewController{
//    let storyboard = UIStoryboard(name: "Main", bundle: nil)
//    return storyboard.instantiateViewController(withIdentifier: "Math_Quiz_Begin")
//}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topics.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TableView.dequeueReusableCell(withIdentifier: "cell_1", for: indexPath)
        cell.textLabel?.text = topics[indexPath.row]
       // cell.Math_Image
        cell.detailTextLabel?.text = "FUCK ME"
        return cell
    }
    
}



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
    @IBAction func Answer_C(_ sender: Any) {
    }
    @IBAction func Answer_B(_ sender: Any) {
    }
    
    @IBAction func Answer_A(_ sender: Any) {
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
        return cell
    }
    
}



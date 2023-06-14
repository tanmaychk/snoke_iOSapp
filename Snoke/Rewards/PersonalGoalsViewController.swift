//
//  PersonalGoalsViewController.swift
//  Snoke
//
//  Created by Akshat Naruka on 27/03/23.
//

import UIKit

class PersonalGoalsViewController: UIViewController, UITableViewDataSource{
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    @IBOutlet weak var refreshbutton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    @IBAction func refreshbutton(_ sender: UIButton) {
        tableView.reloadData()
    }
    
    let cig = Int(userdata[0].cigcount!)
    let cost = Int(userdata[0].price!)
    let year = Float(userdata[0].year!)
    let age = Float(userdata[0].age!)
    
    
    func tableView(_ tableView:UITableView, numberOfRowsInSection section :Int)->Int {
        
        return goalsarray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        let goal = goalsarray[indexPath.row]
        cell.GoalImage.image = goal.image
        cell.GoalProgress.progress = Float(Int((cig ?? 1)! * (cost ?? 18)!))/(Float(goal.price) ?? 1)!
        cell.GoalTitle.text = goal.ProductName
        cell.GoalStat.text = "₹" + String((cig ?? 1)! * (cost ?? 18)!) + " saved off " + "₹" + goal.price
        return cell
    }
    
    
}

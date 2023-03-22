//
//  HomeViewController.swift
//  Snoke
//
//  Created by Akshat Naruka on 07/03/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var progress: UIProgressView!
    
    @IBOutlet var nametag: UILabel!
    
    @IBOutlet var progressText: UILabel!
    
    @IBOutlet var dayReset: UILabel!
    
    @IBOutlet var motLabel: UILabel!
    
    @IBOutlet var moneysavedhome: UILabel!
    
    @IBOutlet var flagdayslabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        
        //let un = String(userdata[0].userName!)
        let cig = Int(userdata[0].cigcount!)
        let cost = Int(userdata[0].price!)
        let freq = Int(userdata[0].freq!)
        
        
        if(userdata[0].userName == ""){
            nametag.text = "User"
        } else {
            nametag.text = userdata[0].userName
        }
        
        motLabel.text = String(24 - hour) + " hours to another smoke free day !"
        
        moneysavedhome.text = "₹" + String((cig ?? 1)!*(cost ?? 18)!*(freq ?? 1)!)
        
        progress.progress = Float(hour)/24
        
        progressText.text = String(Int((progress.progress)*100)) + "%"
        
        flagdayslabel.text = String(hour) + "h " + String((minute)) + "m "
        
        dayReset.text = "Day " + String(1)
        
    }
    
    @IBAction func resetprogress(_ sender: Any) {
        dayReset.text="Day 1"
        motLabel.text="Let's Restart, " + String(24 - hour) + " more hours"
        flagdayslabel.text="0d 0h 0m"
        moneysavedhome.text="$ 0"
    }
    

    
}

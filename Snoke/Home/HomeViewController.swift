//
//  HomeViewController.swift
//  Snoke
//
//  Created by Akshat Naruka on 07/03/23.
//

import UIKit
import SafariServices

class HomeViewController: UIViewController {

    @IBOutlet weak var NicotineIntake: UILabel!
    
    @IBOutlet weak var Risk: UILabel!
    
    @IBOutlet weak var LifeGained: UILabel!
    
    @IBOutlet var progress: UIProgressView!
    
    @IBOutlet var nametag: UILabel!
    
    @IBOutlet var progressText: UILabel!
    
    @IBOutlet var dayReset: UILabel!
    
    @IBOutlet var motLabel: UILabel!
    
    @IBOutlet var moneysavedhome: UILabel!
    
    @IBOutlet var flagdayslabel: UILabel!
    
    
    
    class dateforcalender{
        let instance = dateforcalender()
        private init(){
            
        }
        var date = Date()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        let cig = Int(userdata[0].cigcount!)
        let cost = Int(userdata[0].price!)
        let year = Float(userdata[0].year!)
        let age = Float(userdata[0].age!)
        
        
        if(userdata[0].userName == ""){
            nametag.text = "User"
        } else {
            nametag.text = userdata[0].userName
        }
        
        if((24-hour) == 1){
            motLabel.text = String(24 - hour) + " hour to another smoke free day !"
        } else {
            motLabel.text = String(24 - hour) + " hours to another smoke free day !"
        }
        
        moneysavedhome.text = "₹" + String((cig ?? 1)!*(cost ?? 18)!)
        
        progress.progress = Float(hour)/24
        
        progressText.text = String(Int((progress.progress)*100)) + "%"
        
        flagdayslabel.text = String(hour) + "h " + String((minute)) + "m "
        
        dayReset.text = "Day " + String(1)
        
        NicotineIntake.text = String(Int(ceil((Float(cig ?? 1) * Float(year ?? 1) * 9.4)))) + "mg"
        
        LifeGained.text = String(Int(ceil((Float(year ?? 1) * Float(cig ?? 1) * 0.15)/20))) + " Year"
        
        let riskyear = 5*Float(year ?? 1)
        let riskcig = 10*Float(cig ?? 1)
        let formulabase = Float((age ?? 18) + riskyear + riskcig)
        
        Risk.text = String(Int(ceil((1 - exp(-0.033 * formulabase))*100))) + "%"
    }
    
    @IBAction func resetprogress(_ sender: Any) {
        dayReset.text="Day 1"
        motLabel.text="Let's Restart, " + String(24 - hour) + " more hours"
        flagdayslabel.text="0d 0h 0m"
        moneysavedhome.text="$ 0"
        progress.progressTintColor = UIColor.red
    }
    
    @IBAction func suggest(_ sender: Any) {
        guard let url = URL(string: smokingSuggestion[0])
                    else {return}
                let safariViewController = SFSafariViewController (url: url)
                self.present(safariViewController, animated: true, completion: nil)
    }

    
}

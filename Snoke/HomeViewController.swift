//
//  HomeViewController.swift
//  Snoke
//
//  Created by Akshat Naruka on 07/03/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var progress: UIProgressView!
    @IBOutlet var resetbutton: UIButton!
    @IBOutlet var nametag: UILabel!
    
    @IBOutlet var progressText: UILabel!
    
    @IBOutlet var dayReset: UILabel!
    
    @IBOutlet var motLabel: UILabel!
    
    @IBOutlet var moneysavedhome: UILabel!
    
    @IBOutlet var flagdayslabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nametag.text=users[0].name
        // Do any additional setup after loading the view.
        
        
    }
    
    @IBAction func resetprogress(_ sender: Any) {
        progress.progress=0
        progressText.text="0%"
        dayReset.text="Day 1"
        motLabel.text="Let's Start"
        flagdayslabel.text="0d 0h 0m"
        moneysavedhome.text="$ 0"
    }
    

    
}

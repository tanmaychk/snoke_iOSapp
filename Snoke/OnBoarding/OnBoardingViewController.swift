//
//  OnBoardingViewController.swift
//  Snoke
//
//  Created by Tanmay Chakrabarty on 21/03/23.
//

import UIKit

class OnBoardingViewController: UIViewController {

    
    @IBAction func Submit(_ sender: Any) {
        let username = Name.text
        let userage = Age.text
        let userfreq = SmokeFrequency.text
        let cigprice = PriceOfCig.text
        let cigno = CigNumber.text
        userdata.append(onboarding(name: username, age: userage, freq: userfreq, price: cigprice, cigcount: cigno))
        
        
    }
    
    @IBOutlet weak var Name: UITextField!
    
    @IBOutlet weak var Age: UITextField!
    
    @IBOutlet weak var SmokeFrequency: UITextField!
    
    @IBOutlet weak var PriceOfCig: UITextField!
    
    @IBOutlet weak var CigNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    

}

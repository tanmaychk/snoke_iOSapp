//
//  OnBoardingViewController.swift
//  Snoke
//
//  Created by Tanmay Chakrabarty on 21/03/23.
//

import UIKit
import CoreData

class OnBoardingViewController: UIViewController {

    
    @IBAction func Submit(_ sender: Any) {
        let username = Name.text
        let userage = Age.text
        let userfreq = SmokeFrequency.text
        let cigprice = PriceOfCig.text
        let cigno = CigNumber.text
        userdata.append(onboarding(userName: username, age: userage, year: userfreq, price: cigprice, cigcount: cigno))
        
        
        
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "StartingScreen") as! UITabBarController
        
        controller.modalPresentationStyle = .fullScreen
        controller.modalTransitionStyle = .coverVertical

        present(controller,animated: true,completion: nil)
        
                
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

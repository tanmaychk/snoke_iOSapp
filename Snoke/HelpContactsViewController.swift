//
//  HelpContactsViewController.swift
//  Snoke
//
//  Created by Akshat Naruka on 09/03/23.
//

import UIKit

class HelpContactsViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func callEmer1(_ sender: UIButton) {
        if let url = URL(string: "tel://\(1234567890)"),
           UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    
    @IBAction func callEmer2(_ sender: UIButton) {
        if let url1 = URL(string: "tel://\(1234567890)"),
           UIApplication.shared.canOpenURL(url1) {
            UIApplication.shared.open(url1, options: [:], completionHandler: nil)
        }
    }
    
    
    
    
    
}

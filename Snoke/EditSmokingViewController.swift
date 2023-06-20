//
//  EditSmokingViewController.swift
//  Snoke
//
//  Created by Akshat on 20/06/23.
//

import UIKit

class EditSmokingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var Years: UITextField!
    
    @IBOutlet weak var Price: UITextField!
    
    @IBOutlet weak var Frequency: UITextField!
    
    
    @IBAction func Submit(_ sender: Any) {
        userdata[0].year=Years.text
        userdata[0].price=Price.text
        userdata[0].cigcount=Frequency.text
        dismiss(animated: true, completion: nil)
    }
    
}

//
//  HelpViewController.swift
//  Snoke
//
//  Created by Akshat Naruka on 07/03/23.
//

import UIKit
import ColorSync

class HelpViewController: UIViewController {
    
    @IBOutlet var view1: UIView!
    
    @IBOutlet var view2: UIView!
    
    @IBOutlet var segmentationButton: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func segmentControlCLick(_ sender: UISegmentedControl){
        switch segmentationButton.selectedSegmentIndex{
        case 0:
            view2.isHidden = true;
            view1.isHidden = false;
            segmentationButton.selectedSegmentTintColor = UIColor.init(red: 245/255, green: 223/255, blue: 183/255, alpha: 1)
        case 1:
            view1.isHidden = true;
            view2.isHidden = false;
            segmentationButton.selectedSegmentTintColor = UIColor.init(red: 245/255, green: 223/255, blue: 183/255, alpha: 1)
        default:
            break
        }
    }
}

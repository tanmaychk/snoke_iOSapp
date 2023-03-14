//
//  HelpViewController.swift
//  Snoke
//
//  Created by Akshat Naruka on 07/03/23.
//

import UIKit
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
            view1.isHidden = false;
            view2.isHidden = true;
            segmentationButton.selectedSegmentTintColor = .red
        case 1:
            view2.isHidden = false;
            view1.isHidden = true;
            segmentationButton.selectedSegmentTintColor = .yellow
        default:
            break
        }
    }
}

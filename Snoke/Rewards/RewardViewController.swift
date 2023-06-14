//
//  RewardViewController.swift
//  Snoke
//
//  Created by Akshat Naruka on 07/03/23.
//

import UIKit

class RewardViewController: UIViewController {

    @IBOutlet var points: UILabel!
    
    @IBOutlet var moneysavedrewards: UILabel!
    
    @IBOutlet var segment2ControlClick: UISegmentedControl!
    
    @IBOutlet var personalgoalsview: UIView!
    
    @IBOutlet var couponsview: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        points.text=reward[0].points
        moneysavedrewards.text=reward[0].money
    }
    

    
    @IBAction func segment2ControlCLick(_ sender: UISegmentedControl){
        switch segment2ControlClick.selectedSegmentIndex{
        case 0:
            personalgoalsview.isHidden = false;
            couponsview.isHidden = true;
            segment2ControlClick.selectedSegmentTintColor = UIColor.init(red: 245/255, green: 223/255, blue: 183/255, alpha: 1)
        case 1:
            couponsview.isHidden = false;
            personalgoalsview.isHidden = true;
            segment2ControlClick.selectedSegmentTintColor = UIColor.init(red: 245/255, green: 223/255, blue: 183/255, alpha: 1)
        default:
            personalgoalsview.isHidden = false;
            break
        }
    }
}

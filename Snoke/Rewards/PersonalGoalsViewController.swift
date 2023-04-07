//
//  PersonalGoalsViewController.swift
//  Snoke
//
//  Created by Akshat Naruka on 27/03/23.
//

import UIKit

class PersonalGoalsViewController: UIViewController {

    @IBOutlet var PersonalGoalsview: UIView!
    
    @IBOutlet var scrollview: UIScrollView!
    
    
    @IBOutlet weak var refreshbutton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func refreshbutton(_ sender: UIButton) {
        refresh(scrollview)
    }
    
    let cig = Int(userdata[0].cigcount!)
    let cost = Int(userdata[0].price!)
    let year = Float(userdata[0].year!)
    let age = Float(userdata[0].age!)
     
    
    
    func refresh(_ scrollview:UIScrollView) {
        let contentView = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
        contentView.layer.borderColor = UIColor(red:222/255, green:225/255, blue:227/255, alpha: 1).cgColor
        let progress = UIProgressView(frame: CGRect(x: 135, y: 70, width: 200, height: 40))
        progress.progress = Float(Int((cig ?? 1)! * (cost ?? 18)!))/(Float(goalsarray[0].price) ?? 1)!
        progress.transform = progress.transform.scaledBy(x: 1, y: 3)
        progress.layer.cornerRadius = 10
        progress.clipsToBounds = true
        progress.layer.sublayers![1].cornerRadius = 12
        progress.subviews[1].clipsToBounds = true
        progress.trackTintColor = .init(red:237/255, green:246/255, blue:249/255, alpha: 1)
        progress.progressTintColor = .init(red: 0/255, green: 109/255, blue: 119/255, alpha: 1)
        
        contentView.addSubview(progress)
        let image = UIImageView(frame: CGRect(x: 10, y: 20, width: 110 , height: 163))
        image.image = goalsarray[0].image
        contentView.addSubview(image)
        let name = UILabel(frame: CGRect(x: 140, y: 20, width: 193, height: 29))
        name.text = goalsarray[0].ProductName
        name.font = UIFont.boldSystemFont(ofSize: 24.0)
        contentView.addSubview(name)
        let price = UILabel(frame: CGRect(x: 140, y: 70, width: 230, height: 80))
        price.text = "₹" + String((cig ?? 1)! * (cost ?? 18)!) + " saved off " + "₹" + goalsarray[0].price
        price.font = UIFont.systemFont(ofSize: 20.0)
        contentView.addSubview(price)
        self.PersonalGoalsview.addSubview(contentView)
    }
    

}

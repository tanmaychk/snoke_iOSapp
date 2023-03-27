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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func refreshbutton(_ sender: UIButton) {
        refresh(scrollview)
    }
    
    func refresh(_ scrollview:UIScrollView) {
        let contentView = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
        contentView.layer.borderColor = UIColor(red:222/255, green:225/255, blue:227/255, alpha: 1).cgColor
        let progress = UIProgressView(frame: CGRect(x: 180, y: 40, width: 150, height: 100))
        progress.progress = 0.5
        progress.progressTintColor = .init(red: 0/255, green: 109/255, blue: 119/255, alpha: 1)
        contentView.addSubview(progress)
        let image = UIImageView(frame: CGRect(x: 10, y: 50, width: 150 , height: 150))
        image.image = goalsarray[0].image
        contentView.addSubview(image)
        let name = UILabel(frame: CGRect(x: 180, y: 20, width: 100, height: 80))
        name.text = goalsarray[0].ProductName
        contentView.addSubview(name)
        let price = UILabel(frame: CGRect(x: 180, y: 150, width: 100, height: 80))
        price.text = goalsarray[0].price
        contentView.addSubview(price)
        self.PersonalGoalsview.addSubview(contentView)
    }
    

}

//
//  MyCollectionViewCell.swift
//  Snoke
//
//  Created by Akshat Naruka on 19/03/23.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet var myImageView:UIImageView!
    
    @IBOutlet var imagebutton: UIButton!
    static let identifier = "MyCollectionViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    public func configure(with model:Model){
        self.myImageView.image = UIImage(named: model.imageName)
        self.myImageView.contentMode = .scaleAspectFill
    }
    
    
    
}

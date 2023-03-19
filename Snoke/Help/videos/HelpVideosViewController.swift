//
//  HelpVideosViewController.swift
//  Snoke
//
//  Created by Akshat Naruka on 14/03/23.
//

import UIKit
import WebKit
class HelpVideosViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    @IBOutlet var table: UITableView!
    
    var models = [Model]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        models.append(Model(imageName: "exercise"))
        models.append(Model(imageName: "exercise2"))
        models.append(Model(imageName: "exercise3"))
        models.append(Model(imageName: "exercise4"))
        models.append(Model(imageName: "exercise5"))
        
        table.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as! CollectionTableViewCell
        cell.configure(with: models)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200.0
        
    }
    
}

//
//  HelpVideosViewController.swift
//  Snoke
//
//  Created by Akshat Naruka on 14/03/23.
//

import UIKit
import WebKit
import SafariServices

class HelpVideosViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, SFSafariViewControllerDelegate{
    
    var models = [Model]()
    
    @IBOutlet var table: UITableView!
    @IBOutlet var webview: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        models.append(Model(imageName: "exercise"))
        models.append(Model(imageName: "exercise2"))
        models.append(Model(imageName: "exercise3"))
        models.append(Model(imageName: "exercise4"))
        models.append(Model(imageName: "exercise5"))
        
//        table.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
//        table.delegate = self
//        table.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as! CollectionTableViewCell
        cell.configure(with: models)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200.0
        
    }
    
//    func collectionView(_ collectionView: UICollectionView,
//                        didSelectItemAt indexPath: IndexPath) {
//        print("Cell \(indexPath.row + 1) clicked")
//        var url = URL(string:videos[indexPath.row])
//        let req = URLRequest(url: url!)
//        webview.load(req)
//        
//    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Cell \(indexPath.row + 1) clicked")
        let url = URL(string:videos[indexPath.row])
        let req = URLRequest(url: url!)
        webview.load(req)
    }
    
    
    
    @IBAction func breathwork(_ sender: Any) {
        guard let url = URL(string: videos[0])
                    else {return}
                let safariViewController = SFSafariViewController (url: url)
                self.present(safariViewController, animated: true, completion: nil)
    }
    
    @IBAction func exercises(_ sender: Any) {
        guard let url = URL(string: videos[1])
                    else {return}
                let safariViewController = SFSafariViewController (url: url)
                self.present(safariViewController, animated: true, completion: nil)
    }
    
    @IBAction func pushups(_ sender: Any) {
        guard let url = URL(string: videos[2])
                    else {return}
                let safariViewController = SFSafariViewController (url: url)
                self.present(safariViewController, animated: true, completion: nil)
    }
    
    @IBAction func workout(_ sender: Any) {
        guard let url = URL(string: videos[3])
                    else {return}
                let safariViewController = SFSafariViewController (url: url)
                self.present(safariViewController, animated: true, completion: nil)
    }
    
    @IBAction func zumba(_ sender: Any) {
        guard let url = URL(string: videos[4])
                    else {return}
                let safariViewController = SFSafariViewController (url: url)
                self.present(safariViewController, animated: true, completion: nil)
    }
    
    @IBAction func running(_ sender: Any) {
        guard let url = URL(string: videos[5])
                    else {return}
                let safariViewController = SFSafariViewController (url: url)
                self.present(safariViewController, animated: true, completion: nil)
    }
}

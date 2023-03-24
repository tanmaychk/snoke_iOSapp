//
//  HelpVideosViewController.swift
//  Snoke
//
//  Created by Akshat Naruka on 14/03/23.
//

import UIKit
import WebKit
import SafariServices

class HelpVideosViewController: UIViewController, SFSafariViewControllerDelegate{
    
    var models = [Model]()
    
    
    @IBOutlet var webview: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        models.append(Model(imageName: "exercise"))
        models.append(Model(imageName: "exercise2"))
        models.append(Model(imageName: "exercise3"))
        models.append(Model(imageName: "exercise4"))
        models.append(Model(imageName: "exercise5"))
        
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

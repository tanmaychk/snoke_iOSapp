//
//  HelpViewController.swift
//  Snoke
//
//  Created by Akshat Naruka on 07/03/23.
//

import UIKit
import WebKit
class HelpViewController: UIViewController,WKNavigationDelegate {
    
    @IBOutlet var webView: WKWebView!
    
    @IBOutlet var Physical: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //code for breathing webview
        webView.frame = view.bounds
        webView.navigationDelegate = self
        let url = URL(string: "https://www.youtube.com/watch?v=inpok4MKVLM")!
        let urlRequest = URLRequest(url: url)
        
        webView.load(urlRequest)
        webView.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        view.addSubview(webView)
        
        //code for physical webview
        Physical.frame = view.bounds
        Physical.navigationDelegate = self
        let url1 = URL(string: "https://www.youtube.com/watch?v=M0uO8X3_tEA")!
        let urlRequest1 = URLRequest(url: url1)
        
        Physical.load(urlRequest1)
        Physical.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        view.addSubview(webView)
        
        
        
        
    }
    
    
    
    
//    Physical.frame = view.bounds
//    Physical.navigationDelegate = self
//    let url = URL(string: "https://www.youtube.com/watch?v=inpok4MKVLM")!
//    let urlRequest = URLRequest(url: url)
//
//    Physical.load(urlRequest)
//    Physical.autoresizingMask = [.flexibleWidth,.flexibleHeight]
//            view.addSubview(webView)
//}
    
//    fileprivate func addPlayerToView(_ view: UIView) {
//        let videoURL=NSURL(string: "https://www.youtube.com/watch?v=inpok4MKVLM")!
//
//       }
//    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
//            if navigationAction.navigationType == .linkActivated  {
//                if let url = navigationAction.request.url,
//                    let host = url.host, !host.hasPrefix("www.google.com"),
//                    UIApplication.shared.canOpenURL(url) {
//                    UIApplication.shared.open(url)
//                    print(url)
//                    print("Redirected to browser. No need to open it locally")
//                    decisionHandler(.cancel)
//                    return
//                } else {
//                    print("Open it locally")
//                    decisionHandler(.allow)
//                    return
//                }
//            } else {
//                print("not a user click")
//                decisionHandler(.allow)
//                return
//            }
//        }
}

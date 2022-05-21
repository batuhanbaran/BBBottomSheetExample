//
//  ContentViewController.swift
//  BBBottomSheetExample
//
//  Created by Batuhan Baran on 18.03.2022.
//

import UIKit
import WebKit

class ContentViewController: UIViewController {

    // MARK: - Private Properties
    private let webView = WKWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(webView)
        loadWebView()
    }
    
    private func loadWebView() {
        guard let url = URL(string: "https://pagesix.com/2022/03/31/scout-willis-grateful-for-love-over-bruce-willis-aphasia") else { return }
        let urlRequest = URLRequest(url: url)
        webView.load(urlRequest)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        webView.frame = view.bounds
    }
}

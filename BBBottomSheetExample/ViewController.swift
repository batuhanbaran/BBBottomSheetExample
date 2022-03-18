//
//  ViewController.swift
//  BBBottomSheetExample
//
//  Created by Batuhan Baran on 18.03.2022.
//

import UIKit
import BBBottomSheet

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Home"
        
        let contentViewController = ContentViewController()
        let bottomSheet = BottomSheetViewController(contentViewController: contentViewController, bottomSheetHeightMode: .dynamic)
        bottomSheet.present(self)
    }
}


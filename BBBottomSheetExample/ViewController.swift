//
//  ViewController.swift
//  BBBottomSheetExample
//
//  Created by Batuhan Baran on 18.03.2022.
//

import UIKit
import BBBottomSheet

class ViewController: UIViewController {

    var bottomSheet: BottomSheetViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Home"
        
        let contentViewController = ContentViewController()
        bottomSheet = BottomSheetViewController(self, contentViewController: contentViewController, bottomSheetSize: .half)
        bottomSheet?.present(animated: true)
    }
    
    @IBAction func openBottomSheet(_ sender: Any) {
        bottomSheet?.present(animated: true)
    }
}


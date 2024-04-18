//
//  ViewController.swift
//  SwiftuiOnUIKit
//
//  Created by Marco Alonso on 15/04/24.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    private var trip = Trip()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showModal2(_ sender: UIButton) {
        let modalView = TripViewContainer(dismissAction: {
            self.dismiss(animated: true)
        }, trip: trip)
        let modalVC = UIHostingController(rootView: modalView)
        self.present(modalVC, animated: true)
    }
    
}


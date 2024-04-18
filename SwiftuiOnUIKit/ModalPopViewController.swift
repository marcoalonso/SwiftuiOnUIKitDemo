//
//  ModalPopViewController.swift
//  SwiftuiOnUIKit
//
//  Created by Marco Alonso on 15/04/24.
//

import UIKit
import SwiftUI

class ModalPopViewController: UIViewController {
    
    /// Se crea una instancia de Trip que es la data que se le pasarà a la vista de SwiftUI
    private var trip = Trip()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// Se crea un VC generico y se le agrega la vista en SwiftUI de manera programatica
        let childVC = UIHostingController(rootView: TripViewContainer(dismissAction: {
            self.dismiss(animated: true)
        }, trip: trip))
        addChild(childVC)
        
        view.addSubview(childVC.view)
        
        childVC.view.frame = view.frame
    }
    
}

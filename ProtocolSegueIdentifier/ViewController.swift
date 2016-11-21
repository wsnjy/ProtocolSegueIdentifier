//
//  ViewController.swift
//  ProtocolSegueIdentifier
//
//  Created by Wisnu Sanjaya on 11/21/16.
//  Copyright © 2016 Sanjaya Wisnu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SegueHandlerType {
    
    enum SegueIdentifier: String {
        case FallinInLoveWithWulan
        case FallinInLoveWithSophia
    }

    @IBOutlet weak var width: NSLayoutConstraint!
    
    override func viewDidLoad() {

        super.viewDidLoad()
        
        width.constant = self.view.frame.width/2
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        switch segueIdentifierForSegue(segue) {
        case .FallinInLoveWithWulan:
            
            let wulanVC = segue.destination as? WulanViewController
            wulanVC?.inject("This is Wulan's daughter")
        
        case .FallinInLoveWithSophia:
        
            let sophiaVC = segue.destination as? SophiaViewController
            sophiaVC?.inject("This is Sophia's daughter")
        
        }
        
    }
    
    @IBAction func tapWulanAction(_ sender: Any) {
        performSegueWithIdentifier(.FallinInLoveWithWulan, sender: self)
    }

    @IBAction func tapSophiaAction(_ sender: Any) {
        performSegueWithIdentifier(.FallinInLoveWithSophia, sender: self)
    }
    
    
}


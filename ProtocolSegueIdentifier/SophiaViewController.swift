//
//  SophiaViewController.swift
//  ProtocolSegueIdentifier
//
//  Created by Wisnu Sanjaya on 11/21/16.
//  Copyright © 2016 Sanjaya Wisnu. All rights reserved.
//

import UIKit

class SophiaViewController: UIViewController, InjectText {

    @IBOutlet weak var label: UILabel!
    
    typealias T = String
    
    private var textLabel: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        assertDependencies()
        
        label.text = textLabel
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func inject(_ text: T) {
        textLabel = text
    }
    
    func assertDependencies() {

        assert(textLabel != nil)
        
    }
    

}

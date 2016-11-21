//
//  WulanViewController.swift
//  ProtocolSegueIdentifier
//
//  Created by Wisnu Sanjaya on 11/21/16.
//  Copyright © 2016 Sanjaya Wisnu. All rights reserved.
//

import UIKit

protocol InjectText {
 
    associatedtype T
    func inject(_ text: T)
    func assertDependencies()

}

class WulanViewController: UIViewController, InjectText {

    @IBOutlet weak var label: UILabel!
    
    typealias T = String
    
    private var textLabel: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        assertDependencies()
        
        label.text = textLabel

    }

    
    func inject(_ text: T) {
        
        textLabel = text
        
    }
    
    func assertDependencies() {
        
        assert(textLabel != nil)
    
    }
    
}

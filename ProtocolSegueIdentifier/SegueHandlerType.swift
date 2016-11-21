//
//  SegueHandlerType.swift
//  ProtocolSegueIdentifier
//
//  Created by Wisnu Sanjaya on 11/21/16.
//  Copyright © 2016 Sanjaya Wisnu. All rights reserved.
//

import UIKit
import Foundation

protocol SegueHandlerType {
    associatedtype SegueIdentifier: RawRepresentable
}

extension SegueHandlerType where Self: UIViewController, SegueIdentifier.RawValue == String
{
    
    func performSegueWithIdentifier(_ segueIdentifier: SegueIdentifier, sender: AnyObject?){
        
        performSegue(withIdentifier: segueIdentifier.rawValue, sender: sender)
        
    }
    
    func segueIdentifierForSegue(_ segue: UIStoryboardSegue) -> SegueIdentifier{
        
        guard let identifier = segue.identifier,
            let SegueIdentifier = SegueIdentifier(rawValue: identifier) else { fatalError("Invalid segue identifier \(segue.identifier).") }
        
        return SegueIdentifier
        
    }
    
}

//
//  Utilities.swift
//  MSRITCONNECT
//
//  Created by Apple on 25/02/20.
//  Copyright © 2020 KARTLA. All rights reserved.
//

import Foundation
import UIKit
class Utilities
{
    static func isPasswordValid(_ password : String)->Bool
    {
        let passwordTest = NSPredicate(format: " SELF MATCHES %@","^(?=.*[a-z])(?=.*[$@$#!%*?&])(A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password )
        
        }
    }


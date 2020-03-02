//
//  attendance.swift
//  MSRIT CONNECT
//
//  Created by Apple on 07/02/20.
//  Copyright © 2020 KARTLA. All rights reserved.
//

import Foundation
struct Attendence : Decodable
{
    var attendence :[SISdetail]
}
struct SISdetail : Decodable{
    var name : String
    var code : String
}


//
//  ROUNDBUTTON.swift
//  MSRIT CONNECT
//
//  Created by Apple on 05/02/20.
//  Copyright © 2020 KARTLA. All rights reserved.
//

import UIKit
@IBDesignable
class ROUNDBUTTON: UIButton {
    @IBInspectable var cornerRadius : CGFloat = 0
        {
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
   @IBInspectable var borderWidth : CGFloat = 0
          {
          didSet{
              self.layer.borderWidth = borderWidth
          }
      }
    @IBInspectable var borderColor : UIColor = UIColor.clear
             {
             didSet{
                self.layer.borderColor = borderColor.cgColor
             }
         }
}

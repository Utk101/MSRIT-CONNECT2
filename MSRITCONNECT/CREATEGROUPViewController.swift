//
//  CREATEGROUPViewController.swift
//  MSRITCONNECT
//
//  Created by Apple on 27/02/20.
//  Copyright © 2020 KARTLA. All rights reserved.
//

import UIKit

class CREATEGROUPViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.popOver.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var popOver: UIView!
    
    @IBAction func cancelBt(_ sender: Any) {
        self.popOver.removeFromSuperview()
    }
    @IBAction func creategrp(_ sender: Any) {
        self.view.addSubview(popOver)
        popOver.center = self.view.center
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

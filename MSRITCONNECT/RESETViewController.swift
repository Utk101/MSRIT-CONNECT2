//
//  RESETViewController.swift
//  MSRIT CONNECT
//
//  Created by Apple on 18/02/20.
//  Copyright © 2020 KARTLA. All rights reserved.
//

import UIKit

class RESETViewController: UIViewController {

    @IBOutlet weak var resetpassword: UIButton!
    @IBOutlet weak var errorlabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var email: UITextField!
    
    @IBAction func resetTapped(_ sender: Any) {
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

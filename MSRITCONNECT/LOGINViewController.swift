//
//  LOGINViewController.swift
//  MSRIT CONNECT
//
//  Created by Apple on 18/02/20.
//  Copyright © 2020 KARTLA. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class LOGINViewController: UIViewController
{
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var errorlabel: UILabel!
   
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       setUpelements()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginTapped(_ sender: Any) {
        let email1 = email.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password1 = password.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        Auth.auth().signIn(withEmail: email1, password: password1){
            (result,error) in
        
            if error != nil
            {
              //  self.errorlabel.text = error!.localizedDescription
                //self.errorlabel.alpha = 1
                let alert = UIAlertController(title: "Sign-in failed", message: nil, preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
            else{
                self.transitionToShare()
                
            }
        }
    }

    func setUpelements()
    {
        errorlabel.alpha = 0
    }
    
    // MARK: - Navigation

 
    func transitionToShare()
       {
        //  let shareViewController = storyboard?.instantiateViewController(identifier: Constants.Storyboard.shareViewController) as? ShareViewController
         //  view.window?.rootViewController = shareViewController
         //  view.window?.makeKeyAndVisible()
           performSegue(withIdentifier: "login", sender: self)
       }
}

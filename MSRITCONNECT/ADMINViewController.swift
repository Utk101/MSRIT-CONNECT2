//
//  ADMINViewController.swift
//  MSRIT CONNECT
//
//  Created by Apple on 18/02/20.
//  Copyright © 2020 KARTLA. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseFirestore

class ADMINViewController: UIViewController , UITextFieldDelegate{
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var email: UITextField!

    @IBOutlet weak var errorLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        email.delegate = self
        password.delegate = self
        // Do any additional setup after loading the view.
    }
    
func validateFields()->String?
{   if (email.text?.trimmingCharacters(in: .whitespacesAndNewlines) == " " ) ||
    (password.text?.trimmingCharacters(in: .whitespacesAndNewlines) == " ")
{
    return "Please fill in all the fields."
    }
    
    /*let cleanedPassword = password.text!.trimmingCharacters(in: .whitespacesAndNewlines)
    if Utilities.isPasswordValid(cleanedPassword) == false
    {
        return "Please make sure your password is atleast 8-characters,contains special characters and a number"
    }*/
    return nil
    }
    @IBAction func signupTapped(_ sender: Any) {
        
        let error = validateFields()
        if error != nil{
            showError(error!)
    
        }
        else{
            let email1 = email.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let password1 = password.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            Auth.auth().createUser(withEmail: email1, password: password1) {(result,err) in
                if err != nil{
                   //self.errorlabel.alpha = 1
                                  let alert = UIAlertController(title: "Authentication failed / Email taken", message: nil, preferredStyle: .alert)
                                  alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
                                  self.present(alert, animated: true, completion: nil)
                }
                else{
                  //  self.performSegue(withIdentifier: "gotologin", sender: self)
                   print("User Created")
                   
                
                    
                    self.transitionToShare()
                    
                }
            }
        }
    }
    func showError(_ message: String)
    {
        errorLabel.text = message
        errorLabel.alpha = 1
        
    }
    func transitionToShare()
    {
     //  let shareViewController = storyboard?.instantiateViewController(identifier: Constants.Storyboard.shareViewController) as? ShareViewController
      //  view.window?.rootViewController = shareViewController
      //  view.window?.makeKeyAndVisible()
        performSegue(withIdentifier: "share", sender: self)
    }
   
/*   func transitionToLogin()
   {
    let loginViewController = storyboard?.instantiateViewController(withIdentifier: Constants.Storyboard.loginviewcontroller)as? LOGINViewController
    view.window?.rootViewController = loginViewController
    view.window?.makeKeyAndVisible()
    }
    /**/
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

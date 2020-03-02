//
//  ViewController.swift
//  MSRIT CONNECT
//
//  Created by Apple on 04/02/20.
//  Copyright © 2020 KARTLA. All rights reserved.
//
import UIKit
struct jsonstruct : Decodable
{
    let attendance : [mainstruct]
}
 struct mainstruct : Decodable
{
     let name : String
     let code : String
   // let absent : String
    let percentage : String
   // let present : String
   // let present_dates : [dateinfo]
   // let absent_dates : [dateinfo]
   
}
/*struct dateinfo : Decodable
   {
    let date : String
    let index : String
    let status : String
    let time : String
    
}*/

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource
{
  
   
    @IBOutlet weak var tableview: UITableView!
    
    @IBOutlet weak var usnfied: UITextField!
    

    @IBOutlet weak var dobfield: UITextField!
 
    
    var arrdata = [mainstruct]()
    override func viewDidLoad() {
        
    
        super.viewDidLoad()
        usnfied.delegate = self
        dobfield.delegate = self
     //   usnfied.text = usn
      //  dobfield.text = dob
      
        
        
        //getdata()
    }
        
   
    
    @IBAction func enterTapped(_ sender: Any) {
        
        let a = usnfied.text!
        let b  = dobfield.text!
                       let url = URL(string: "https://sis-scraper-rit-dup-2.herokuapp.com/get_sis_data/\(a)/\(b)")
                       // let url = URL(string: urlString )
                            URLSession.shared.dataTask(with: url!) { (data, response, error) in
                                do{
                                if error == nil
                                {
                                    let sis = try JSONDecoder().decode(jsonstruct.self, from: data!)
                                    let sisdetail = sis.attendance
                                  
                                    for mainarray in sisdetail
                                    {
                                        print(mainarray.name, ":", mainarray.code,
                                              mainarray.percentage
                                              
                                             )
                                    DispatchQueue.main.async {
                                            self.tableview.reloadData()
                                        }
                                        
                                    
                                    
                                    }
                                }
                                }
                                catch{
                                    print("Error in getting json data")
                                }
                               
                            }.resume()
            }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return self.arrdata.count
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell : TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
          cell.lblname.text = arrdata[indexPath.row].name
           cell.lblcode.text = arrdata[indexPath.row].code
           cell.percent.text = arrdata[indexPath.row].percentage
          return cell
      }
      
   
       
}
     

extension ViewController : UITextFieldDelegate
{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}



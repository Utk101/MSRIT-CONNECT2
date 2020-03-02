//
//  TIMETABLEViewController.swift
//  MSRIT CONNECT
//
//  Created by Apple on 05/02/20.
//  Copyright © 2020 KARTLA. All rights reserved.
//

import UIKit
class CellClass: UITableViewCell
{
    
    }

class TIMETABLEViewController: UIViewController {
  
    @IBOutlet weak var button: UIButton!
    let transparentView = UIView()
    let tableView = UITableView()
    var selectedbutton = UIButton()
    var dataSource = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CellClass.self, forCellReuseIdentifier: "cell")
        
    }
    func addTransparentView(frames: CGRect)
{
    let window =  UIApplication.shared.keyWindow
    transparentView.frame = window?.frame ?? self.view.frame
    self.view.addSubview(transparentView)
    tableView.frame = CGRect(x: frames.origin.x , y: frames.origin.y + frames.height + 5 , width: 0 , height: 0)
    self.view.addSubview(tableView)
    tableView.layer.cornerRadius = 5
    transparentView.backgroundColor = UIColor.black.withAlphaComponent(0.9)
    let tapgesture = UITapGestureRecognizer(target: self, action: #selector( removeTransparentView))
    transparentView.addGestureRecognizer(tapgesture)
    transparentView.alpha = 0
    UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0,options: .curveEaseInOut, animations: {self.transparentView.alpha = 0.5
        self.tableView.frame = CGRect(x: 0, y: frames.origin.y + frames.height+5, width: 500, height: 150)
    }, completion: nil)
    
    }
    @objc func removeTransparentView()
    {let frames = selectedbutton.frame
        
    UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0,options: .curveEaseInOut, animations: {self.transparentView.alpha = 0.0
        self.tableView.frame = CGRect(x: -200, y:  frames.origin.y + frames.height, width: 0, height: 0)
        }, completion: nil)
    }
    @IBAction func onClick(_ sender: Any) {
        dataSource = ["Create Time Table" , "Download Time Table", "Upload this time table for others"]
         selectedbutton  = button
        addTransparentView(frames: button.frame)
   
    }
}
extension TIMETABLEViewController: UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    { return dataSource.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = dataSource[indexPath.row]
        return cell
    }
}
  // func
    


/* func prepareForSegue(segue : UIStoryboardSegue , sender : AnyObject?) {
     if segue.identifier == "showPopover"
     {
         let popoverViewController = segue.destination
         popoverViewController.popoverPresentationController?.delegate = self
     }
 }
 func adaptivePresentationStyleForPresentationController( controller: UIPresentationController) -> UIModalPresentationStyle {
     return UIModalPresentationStyle.none
 }
 override func didReceiveMemoryWarning() {
     super.didReceiveMemoryWarning()
 }

}*/


//
//  MSRITCONNECTViewController.swift
//  MSRIT CONNECT
//
//  Created by Apple on 04/02/20.
//  Copyright © 2020 KARTLA. All rights reserved.
//

import UIKit

class MSRITCONNECTViewController: UIViewController {
    let transition = slideintransition()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapMenu(_ sender: UIButton) {
        guard let menuViewController = storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController
            else{return}
       /* menuViewController.didTapMenuType = {
            menuType in
            self.transitionToNeW()
        }*/
        menuViewController.modalPresentationStyle = .overCurrentContext
        menuViewController.transitioningDelegate = self
        present(menuViewController, animated: true)
        
        
    }

    
   
}
extension MSRITCONNECTViewController: UIViewControllerTransitioningDelegate
{
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.isPresenting = true
        return transition
        
    }
    func  animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.isPresenting = false
        return transition
    }
}


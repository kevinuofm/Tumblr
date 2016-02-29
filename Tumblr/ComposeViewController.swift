//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Kevin Zhu on 2/28/16.
//  Copyright © 2016 Kevin Zhu. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    
    var fadeTransition: FadeTransition!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var destinationViewController = segue.destinationViewController
        
        destinationViewController.modalPresentationStyle = UIModalPresentationStyle.Custom
        
        fadeTransition = FadeTransition()
        
        destinationViewController.transitioningDelegate = fadeTransition
        
        fadeTransition.duration = 1.0
    }
    
    override func viewWillAppear(animated: Bool) {
       // composeView.alpha = 0.5
        
    }
    
    
    
    @IBOutlet var composeView: UIView!
    
    
    override func viewDidAppear(animated: Bool) {
        
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        composeView.alpha = 0.5

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressNevermind(sender: AnyObject) {
        
        // dismisses the segue
        dismissViewControllerAnimated(true, completion: nil)
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

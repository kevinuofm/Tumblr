//
//  LoginViewController.swift
//  Tumblr
//
//  Created by Kevin Zhu on 2/28/16.
//  Copyright © 2016 Kevin Zhu. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var loginView: UIView!
    
    
        var image: UIImage!
        
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginView.alpha = 0.4
        
        print(loginView.alpha)

        // Do any additional setup after loading the view.
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressCancel(sender: AnyObject) {
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

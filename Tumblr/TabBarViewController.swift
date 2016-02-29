//
//  TabBarViewController.swift
//  Tumblr
//
//  Created by Kevin Zhu on 2/28/16.
//  Copyright © 2016 Kevin Zhu. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    
    
    
    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet var buttons: [UIButton]!
    
    // defines variables for the different view controllers
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    // variable for an array to hold the view controllers.
    var viewControllers: [UIViewController]!
    
    //this variable tracks the index of the array
    var selectedIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)   // access the storyboard though code
        
        //instantiate each ViewController by referencing storyboard and the particular Viewcontroller's Storyboard ID
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
        
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")
        
        //adds each viewcontroller to the "viewControllers" array.
        viewControllers = [homeViewController, searchViewController, accountViewController, trendingViewController]
        
        //sets the first page's button to selected state
        buttons[selectedIndex].selected = true
        //manually calls the method didPressTab and passes an artificial button value to run the method
        didPressTab(buttons[selectedIndex])
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // all the buttons share this action method
    @IBAction func didPressTab(sender: UIButton) {
        //keeps track of index number of the previous button pressed
        let previousIndex = selectedIndex

        selectedIndex = sender.tag //stores the tag number of the button selected
        
        //turns off the selected state of the button of the previous button
        buttons[previousIndex].selected = false
        
        //print("previousIndex is ",previousIndex, " selected index is: ", selectedIndex)
        
        // this sets a variable to track the previous view controller
        let previousVC = viewControllers[previousIndex]
        
        
        //this removes the previous view controller
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        
        //setting the current button to the selected state
        sender.selected = true
        
        //sets vc to the current view controller
        let vc = viewControllers[selectedIndex]
        
        //adds the new view controller, (calls the "ViewWillAppear" method of the ViewController you are adding)
        addChildViewController(vc)
        
        //makes the size of the view controller you are adding to match the contentView of the tabBarViewController and add it as a subveiw of the contentview
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        
        //calls the "viewDidAppear" method of teh viewcontroller you are adding
        vc.didMoveToParentViewController(self)
        
        
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

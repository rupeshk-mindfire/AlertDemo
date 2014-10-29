//
//  ViewController.swift
//  AlertDemo
//
//  Created by Rupesh on 13/10/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonTapped(sender: AnyObject)
    {
        let alertView = UIAlertController(title: "You need to log in first", message: "To access the special features of the app you need to log in first.", preferredStyle: .Alert)
        
        let loginAction =
        UIAlertAction(title:"Login", style: UIAlertActionStyle.Default,handler:{(loginAction:UIAlertAction!) -> Void in
            self.textLabel.text = "Loged In"
        })
        
        let signUpAction = UIAlertAction(title:"SignUp", style: UIAlertActionStyle.Default,handler:{(signUpAction:UIAlertAction!) -> Void in
            self.textLabel.text = "Loged In"
        })

        let cancelAction = UIAlertAction(title:"Cancel", style: UIAlertActionStyle.Cancel,handler:{(cancelAction:UIAlertAction!) -> Void in
            self.textLabel.text = "Loged In"
        })

        alertView.addAction(loginAction)
        alertView.addAction(signUpAction)
        alertView.addAction(cancelAction)
        
        presentViewController(alertView, animated: true, completion: nil)
    }
}


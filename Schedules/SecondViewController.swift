//
//  ScheduleViewController.swift
//  Schedules
//
//  Created by David Ruvinskiy on 9/1/16.
//  Copyright © 2016 David Ruvinskiy. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var bizLogo: UIImageView!
    @IBOutlet weak var bizNameTextField: UITextView!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    @IBOutlet weak var imageOne: UIImageView!
    @IBOutlet weak var imageTwo: UIImageView!
        override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
            bizLogo.image = UIImage(named:"THIS IS A PLACEHOLDER")
            bizNameTextField.text = "Placeholder Inc."
            descriptionTextView.text = "Placeholder Incorperated is a company and oh what a company it is! Placeholder offers so many amazing services to customers, and more imprtantly, oppertunities for students. At Placeholder, your student will learn what a good placeholder truly means, how to create preposterously long placeholders, and how to generate placeholder images and a variety of other placeholding talents! At placeholder, our motto is Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

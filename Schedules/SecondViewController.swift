//
//  ScheduleViewController.swift
//  Schedules
//
//  Created by David Ruvinskiy on 9/1/16.
//  Copyright © 2016 David Ruvinskiy. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var scheduleImageView: UIImageView!
    var selection = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //scheduleImageView.image = UIImage(named: scheduleSelected)
        self.view.backgroundColor = UIColor(red: 0.93333, green: 0.93333, blue: 0.93333, alpha: 1)
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

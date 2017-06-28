//
//  ThirdViewController.swift
//  Schedules
//
//  Created by David Ruvinskiy on 6/27/17.
//  Copyright © 2017 David Ruvinskiy. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var currentArray:[String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        print(currentArray)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.backgroundColor = UIColor(red: 0.93333, green: 0.93333, blue: 0.93333, alpha: 1)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel!.text = currentArray[indexPath.row]
        
        if (indexPath.row % 2 == 0) {
            cell.backgroundColor = UIColor(red: 0.0549, green: 0.25098, blue:  0.5804, alpha: 1)
            cell.textLabel?.textColor = UIColor.white
        }
        else if (indexPath.row % 2 != 0) {
            cell.backgroundColor = UIColor(red:0.00, green:0.47, blue:0.32, alpha:1.0)
            cell.textLabel?.textColor = UIColor.white
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentArray.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //selection = currentArray[indexPath.row]
        //performSegue(withIdentifier: "showSchedule", sender: self)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

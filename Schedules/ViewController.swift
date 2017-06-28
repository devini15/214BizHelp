//
//  ViewController.swift
//  Schedules
//
//  Created by David Ruvinskiy on 9/1/16.
//  Copyright © 2016 David Ruvinskiy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    var bizNames:[String] = ["Marriott", "IKEA", "Walgreens", "Lutheran Home", "California Pizza Kitchen", "Rolling Meadows Library", "Willow Creek Food Pantry", "Northwest Compass", "Fitness 19" ,"Elk Grove Bowling Alley", "High-5 Printwear", "Search, Inc", "Jiminez Grocery Store", "IDES", "Alexian Brothers Medical Center", "Doggie Playhouse", "Family Video", "Poko Loko Early Learning Center", "TJ Maxx"]
    
    let bizLocations:[String] = ["Schaumburg", "Schaumburg", "Arlington Heights", "Arlington Heights", "Schaumburg", "Rolling Meadows", "South Barrington", "Mount Prospect", "Rolling Meadows", "Elk Grove Village", "Arlington Heights", "Mount Prospect", "Wheeling", "Arlington Heights", "Elk Grove Village", "Palatine", "Arlington Heights", "Wheeling", "Mount Prospect"]
    
    let bizIndLevel:[String] = ["Tier 2", "Tier 2", "Tier 1", "Tier 2", "Tier 1", "Tier 1", "Tier 2", "Tier 1", "Tier 1", "Tier 1","Tier 1", "Tier 1", "Tier 1", "Tier 1", "Tier 1", "Tier 1", "Tier 1", "Tier 1", "Tier 2"]
    
    let bizTasks:[String] = ["Cleaning, Food Service, Laundry", "Cleaning, Sorting, Stocking, Food Service, Building", "Cleaning, Stocking, Sales", "Delivery, Greeting", "Cleaning, Food Service, Sales", "Cleaning, Sorting, Stocking", "Cleaning, Sorting, Stocking, Packaging", "Cleaning, Sorting, Stocking, Packaging", "Cleaning", "Cleaning, Sorting", "Cleaning", "Packaging, Building, Sorting", "Cleaning, Stocking, Sales", "Sorting", "unknown", "unknown", "Stocking, Cleaning, Sales", "Cleaning, Child Care", "Cleaning, Packaging, Pricing, Sorting, Stocking, Sales"]
    
    var locations:[String] = ["Mount Prospect", "Rolling Meadows", "Arlington Heights", "Wheeling", "Buffalo Grove", "Elk Grove", "Des Plaines", "Palatine", "Schaumburg"]
    
    var indLevel:[String] = ["Tier 1", "Tier 2"]
    
    var tasks:[String] = ["Cleaning", "Sorting", "Stocking", "Facing", "Food Service", "Delivery", "Building", "Deconstruction", "Laundry", "Human Interaction", "Sales", "Packaging", "Pricing", "Care"]
    
    var selection = ""
    var currentArray:[String] = []
    var mainArray:[String] = []
    var arrayName = ""
    var sendArray:[String] = []
    
    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        let index:Int = sender.selectedSegmentIndex
        
        if (index == 0) {
            currentArray = bizNames
            mainArray = bizNames
        }
        else if (index == 1) {
            currentArray = locations
            mainArray = bizLocations
        }
        else if (index == 2) {
            currentArray = indLevel
            mainArray = bizIndLevel
        }
        else {
            currentArray = tasks
            mainArray = bizTasks
        }
        
        self.tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //bizNames = bizNames.sorted { $0.localizedCaseInsensitiveCompare($1) == ComparisonResult.orderedAscending }
        currentArray = bizNames
        mainArray = bizNames
        
        
        // Do any additional setup after loading the view, typically from a nib.
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
        selection = currentArray[indexPath.row]
        sendArray.removeAll()
        
        if (mainArray == bizNames) {
            sendArray.append(bizNames[mainArray.index(of: selection)!])
        }
        else {
            for i in 0 ..< mainArray.count {
                if mainArray[i].contains(selection) {
                    sendArray.append(bizNames[i])
                }
            }
        }
        
        performSegue(withIdentifier: "showSchedule", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let x:ThirdViewController = segue.destination as! ThirdViewController
        x.currentArray = sendArray
    }

}

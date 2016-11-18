//
//  SecondViewController.swift
//  TennisGuide
//
//  Created by Vladimir Saprykin on 31.07.16.
//  Copyright © 2016 Vladimir Saprykin. All rights reserved.
//

import UIKit

class SecondViewController: UITableViewController {
    
    var factor: Factor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return factor.params.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SecondDataCell", for: indexPath) as! SecondDataCell
        
        let param = factor.params[indexPath.row] // [String:String]
        cell.rivalLabel.text = param.name
        
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toThirdVC" {
            let destinationVC = segue.destination as! ThirdViewController

        }
    }
    
    
}

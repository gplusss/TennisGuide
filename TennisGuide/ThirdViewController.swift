//
//  ThirdViewController.swift
//  TennisGuide
//
//  Created by Vladimir Saprykin on 11.08.16.
//  Copyright © 2016 Vladimir Saprykin. All rights reserved.
//

import UIKit

class ThirdViewController: UITableViewController {
    
    var factor: Factor!
    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ThirdDataCell", for: indexPath) as! ThirdDataCell
        
        
        return cell
    }
    
    

}

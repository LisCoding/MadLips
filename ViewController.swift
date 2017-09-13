//
//  ViewController.swift
//  MadLibs
//
//  Created by Jonathan Poso on 9/12/17.
//  Copyright © 2017 Jonathan Poso. All rights reserved.
//

import UIKit

class ViewController: UIViewController, AddItemDel {
    
   
    @IBOutlet weak var textLabel: UILabel!
    
    
    func addnewitem(newitem : String) {
        textLabel.text = newitem
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let destination = segue.destination as! AddViewController
            destination.delegate = self
        }
}

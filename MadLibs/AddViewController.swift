//
//  AddViewController.swift
//  MadLibs
//
//  Created by Jonathan Poso on 9/12/17.
//  Copyright © 2017 Jonathan Poso. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    

    @IBOutlet weak var noun1Label: UITextField!
    @IBOutlet weak var noun2Label: UITextField!
    @IBOutlet weak var adj1Label: UITextField!
    @IBOutlet weak var adj2Label: UITextField!
    @IBOutlet weak var adj4Label: UITextField!
    @IBOutlet weak var adj3Label: UITextField!
    @IBOutlet weak var adj5Label: UITextField!
    @IBOutlet weak var adj6Label: UITextField!
    @IBOutlet weak var adj7Label: UITextField!
    @IBOutlet weak var adj8Label: UITextField!
    
    
    


    
    var delegate : AddItemDel?
    var newitem : String?
    
    
    
    @IBAction func submitButtonPressed(_ sender: UIButton) {
        let adj1 = adj1Label.text
        let adj2 = adj2Label.text
        let adj3 = adj3Label.text
        let adj4 = adj4Label.text
        let adj5 = adj5Label.text
        let adj6 = adj6Label.text
        let adj7 = adj7Label.text
//        let adj8 = adj8Label.text
        let noun1 = noun1Label.text
        let noun2 = noun2Label.text
        
        
        let sentence = "In a \(noun1!) in the ground there lived a hobbit. Not a \(adj1!), \(adj2!), \(adj3!) \(noun1!), filled with the ends of \(noun2!) and a \(adj4!) smell, nor yet a \(adj5!), \(adj6!), \(adj7!) \(noun1!) with nothing in it to sit down on or to eat: it was a hobbit-\(noun1!), and that means comfort."
        
        //In a hole in the ground there lived a hobbit. Not a nasty, dirty, wet hole, filled with the ends of worms and an oozy smell, nor yet a dry, bare, sandy hole with nothing in it to sit down on or to eat: it was a hobbit-hole, and that means comfort.
        
        newitem = sentence
        delegate?.addnewitem(newitem : newitem!)
        
        dismiss(animated: true, completion: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

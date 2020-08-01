//
//  CodeTermTableViewController.swift
//  Code Dictionary 2.0
//
//  Created by Jane Crites on 7/26/20.
//  Copyright © 2020 Jane Crites. All rights reserved.
//

import UIKit

class CodeTermTableViewController: UITableViewController {

    var terms = ["Array", "Boolean", "Double", "Int", "String"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

// How many rows?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return terms.count
    }

   // What should go in the cell?
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        print(indexPath.row)

        cell.textLabel?.text = terms[indexPath.row]
        
        return cell
    }
   
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedTerm = terms[indexPath.row]
        
        performSegue(withIdentifier: "goToDefinition", sender: selectedTerm)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let codeVC = segue.destination as! CodeViewController
        let selectedTerm = sender as! String
        codeVC.term = selectedTerm
    }
    
    
}

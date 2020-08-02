//
//  CodeTermTableViewController.swift
//  Code Dictionary 2.0
//
//  Created by Jane Crites on 7/26/20.
//  Copyright © 2020 Jane Crites. All rights reserved.
//

import UIKit

class CodeTermTableViewController: UITableViewController {

    var terms: [Term] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //"Array", "Boolean", "Double", "Int", "String"

        let term1 = Term()
        term1.name = "Boolean"
        term1.definition = "A type that can only be true or false. It is common to use with If statements"
        term1.isType = true
        terms.append(term1)
        
        let term2 = Term()
        term2.name = "Double"
        term2.definition = "A number with decimals"
        term2.isType = true
        terms.append(term2)
        
        let term3 = Term()
        term3.name = "If statement"
        term3.definition = "Code that allows us to get one way or another"
        term3.isType = false
        terms.append(term3)
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

        if terms[indexPath.row].isType{
            cell.textLabel?.text = terms[indexPath.row].name + " - Type"

        }else {
        cell.textLabel?.text = terms[indexPath.row].name
        }
        
        return cell
    }
   
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedTerm = terms[indexPath.row]
        
        performSegue(withIdentifier: "goToDefinition", sender: selectedTerm)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let codeVC = segue.destination as? CodeViewController{
            if let selectedTerm = sender as? Term {
        codeVC.term = selectedTerm
    }
    
    
}
    }
}

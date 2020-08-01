//
//  CodeViewController.swift
//  Code Dictionary 2.0
//
//  Created by Jane Crites on 8/1/20.
//  Copyright © 2020 Jane Crites. All rights reserved.
//

import UIKit

class CodeViewController: UIViewController {
    
    @IBOutlet weak var codeDefinition: UILabel!
    
    var term = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
   
    title = term
        
        //var terms = ["Array", "Boolean", "Double", "Int", "String"]
    
        if term == "Array" {
        codeDefinition.text = "An ordered list or set of items. In other languages an array is called a list (e.g. in Python"
        }
        if term == "Boolean" {
            codeDefinition.text = "A type that can only be true or false. It is common to use with If statements"
        }
        if term == "Double" {
            codeDefinition.text = "A type that is a number in Swift that allows decimal places to be shown."
        }
        if term == "Int" {
            codeDefinition.text = "A type that is a whole number, positive or negative."
        }
        if term == "String" {
            codeDefinition.text = "A sequence of characters."
        }

}
}

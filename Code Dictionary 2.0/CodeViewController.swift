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
    
    var term = Term()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
   
        title = term.name
        codeDefinition.text = term.definition
        
        if term.isType {
            codeDefinition.textColor = .red
        }

}
}

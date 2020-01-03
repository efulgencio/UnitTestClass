//
//  ViewController.swift
//  UnitTestClass
//
//  Created by eduardo fulgencio on 03/01/2020.
//  Copyright © 2020 Eduardo Fulgencio Comendeiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtfPalabra: UITextField!
    @IBOutlet weak var txtfLetra: UITextField!
    @IBOutlet weak var btnAccion: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tapBtnAccion(_ sender: Any) {
        var modelString = ModelString(content: txtfPalabra.text!, actionToApply: .appendLetter)
        modelString.applyAction(letter: txtfLetra.text!)
        txtfPalabra.text = modelString.content
    }
    
}


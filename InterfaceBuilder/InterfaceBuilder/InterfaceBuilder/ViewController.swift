//
//  ViewController.swift
//  InterfaceBuilder
//
//  Created by Adrian Kosmaczewski on 09.02.17.
//  Copyright © 2017 Adrian Kosmaczewski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!

    @IBAction func changeLabel(_ sender: Any) {
        label.text = "Hello from Interface Builder!"
    }

}


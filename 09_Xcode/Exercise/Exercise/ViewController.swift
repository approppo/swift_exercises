//
//  ViewController.swift
//  Exercise
//
//  Created by Adrian Kosmaczewski on 06.02.17.
//  Copyright © 2017 Adrian Kosmaczewski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // tag::sample[]
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let msg = "This is an alert!"
        let ac = UIAlertController(title: "Hello!",
                                   message: msg,
                                   preferredStyle: .alert)

        let ok = UIAlertAction(title: "OK",
                               style: .default,
                               handler: nil)
        ac.addAction(ok)

        self.present(ac,
                     animated: true,
                     completion: nil)
    }
    // end::sample[]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


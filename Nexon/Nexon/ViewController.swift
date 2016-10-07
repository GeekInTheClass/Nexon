//
//  ViewController.swift
//  Nexon
//
//  Created by Mac20 on 2016. 10. 7..
//  Copyright © 2016년 Mac20. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    var FirstString = String()
    override func viewDidLoad() {
        super.viewDidLoad()
          label.text = FirstString
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


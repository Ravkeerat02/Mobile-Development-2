//
//  ViewController.swift
//  Lab03
//
//  Created by laptop on 2023-01-26.
//  Copyright © 2023 laptop. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var btnStepUp: UIButton!
    @IBOutlet weak var label: UILabel!
    
    var count = 0
    var step = 1
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
//        label.text = "\(count)"
    }
    
    @IBAction func addOne(_ sender: UIButton) {
            count +=  step
            label.text = "\(count)"
    }
    
    @IBAction func minusOne(_ sender: UIButton) {
        count -= step
        label.text = "\(count)"
    }
    
    @IBAction func clear(_ sender: UIButton) {
        count = 0
        label.text = "\(count)"
        btnStepUp.setTitle("Step Up(\(step)",for: .normal)
    }
    
    @IBAction func stepup(_ sender: UIButton) {
        step += 1
        sender.setTitle("Step Up(\(step)",for: .normal)
    }
    
}
    
    

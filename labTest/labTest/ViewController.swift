//
//  ViewController.swift
//  labTest
//
//  Created by laptop on 2023-02-16.
//  Copyright © 2023 laptop. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var n1: UILabel!
    @IBOutlet weak var n2: UILabel!
    @IBOutlet weak var n3: UILabel!
    @IBOutlet weak var n4: UILabel!
    @IBOutlet weak var n5: UILabel!
    @IBOutlet weak var n6: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    @IBAction func clear_btn(_ sender: Any) {
        n1.text = nil
        n2.text = nil
        n3.text = nil
        n4.text = nil
        n5.text = nil
        n6.text = nil
    }
    

    @IBAction func generate_btn(_ sender: UIButton) {
        let RandomNumber1 = Int.random(in:1...65)
        let RandomNumber2 = Int.random(in:1...65)
        let RandomNumber3 = Int.random(in:1...65)
        let RandomNumber4 = Int.random(in:1...65)
        let RandomNumber5 = Int.random(in:1...65)
        let RandomNumber6 = Int.random(in:1...65)
        
        n1.text = "\(RandomNumber1)"
        n2.text = "\(RandomNumber2)"
        n3.text = "\(RandomNumber3)"
        n4.text = "\(RandomNumber4)"
        n5.text = "\(RandomNumber5)"
        n6.text = "\(RandomNumber6)"
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


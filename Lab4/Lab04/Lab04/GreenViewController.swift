//
//  GreenViewController.swift
//  Lab04
//
//  Created by laptop on 2023-02-08.
//  Copyright © 2023 laptop. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {

    
    
    @IBOutlet weak var messageBox: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func getBack(_ segue:UIStoryboardSegue){
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "blue"{
            let c = segue.destination as! BlueViewController
            if let s = messageBox.text{
                c.message = s
            }
        }
    }
}

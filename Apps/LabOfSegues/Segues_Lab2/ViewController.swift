//
//  ViewController.swift
//  Segues_Lab2
//
//  Created by Student on 18/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondViewController" {
            let destinationViewController = segue.destination as! SecondViewController
            destinationViewController.messageToShow = "Hello from FirstViewController!"
        }
    }


}


//
//  ViewController.swift
//  Seguv_Navigation
//
//  Created by Student on 18/07/25.
//

import UIKit

class ViewController: UIViewController {

//    @IBOutlet weak var redTextField: UITextField!
    
    @IBOutlet weak var `switch`: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func unwindToRed (unwindSegue : UIStoryboardSegue ){
        
    }

    
    @IBAction func goToYellowButtonTapped(_ sender: Any) {
        if `switch`.isOn {
            performSegue(withIdentifier: "yellow", sender: self)
        }
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        segue.destination.navigationItem.title = redTextField.text
//    }
    
}


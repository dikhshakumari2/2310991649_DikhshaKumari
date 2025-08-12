//
//  ViewController.swift
//  EventDraft_DataPassing
//
//  Created by Student on 12/08/25.
//

import UIKit

class FirstVC: UIViewController {

    @IBOutlet weak var firstTitle: UITextField!
    @IBOutlet weak var firstDate: UITextField!
    @IBOutlet weak var firstLocation: UITextField!
    @IBOutlet weak var firstGuests: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController ,
              let secondVC = navigationVC.topViewController as? SecondVC
        else {
            return
        }
        secondVC.secondTitle.text = firstTitle.text
        secondVC.secondDate.text = firstDate.text
        secondVC.secondLocation.text = firstLocation.text
        secondVC.secondGuests.text = firstGuests.text
    }

}


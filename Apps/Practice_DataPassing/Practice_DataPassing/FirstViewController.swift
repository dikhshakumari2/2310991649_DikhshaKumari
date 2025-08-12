//
//  ViewController.swift
//  Practice_DataPassing
//
//  Created by Student on 11/08/25.
//

import UIKit

protocol DataPassing{
    func dataPassingToFirstVC(labelData: String, sliderData: Float, textFieldData: String)
}

class FirstViewController: UIViewController , DataPassing{

    @IBOutlet weak var firstSlider: UISlider!
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstTextField: UITextField!
    
    @IBOutlet weak var firstButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func dataPassingToFirstVC(labelData: String, sliderData: Float, textFieldData: String) {
        firstLabel.text = labelData
        firstTextField.text = textFieldData
        firstSlider.value = sliderData
    }


    @IBSegueAction func passDataToSecond(_ coder: NSCoder) -> SecondViewController? {
       let labelData = firstLabel.text
        let sliderData = firstSlider.value
        let textFieldData = firstTextField.text
        return SecondViewController(coder: coder, labelData: labelData, sliderData: sliderData, textFieldData: textFieldData,firstVC )
        
        
    }
    @IBAction func unwindToFirstViewController(segue: UIStoryboardSegue) {
        guard let secondVC = segue.source as? SecondViewController else{
            return
        }
        firstLabel.text = secondVC.secondTextfield.text
        firstTextField.text = secondVC.secondLabel.text
        firstSlider.value = secondVC.secondSlider.value
        
    }
}


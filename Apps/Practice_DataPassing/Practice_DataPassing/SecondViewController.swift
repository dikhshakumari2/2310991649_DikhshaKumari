//
//  SecondViewController.swift
//  Practice_DataPassing
//
//  Created by Student on 11/08/25.
//

import UIKit

class SecondViewController: UIViewController {

   
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var secondSlider: UISlider!
    @IBOutlet weak var secondTextfield: UITextField!
    
    var labelData: String?
    var sliderData: Float?
    var textFieldData: String?
    var delegate: DataPassing?
    
    init?(coder: NSCoder ,labelData :String? , sliderData : Float? , textFieldData : String?, firstVC: FirstViewController){
        self.labelData = labelData
        self.sliderData = sliderData
        self.textFieldData = textFieldData
        self.delegate = firstVC
        super.init(coder: coder)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        if let labelData , let sliderData , let textFieldData {
            updateUI(labelData: labelData, sliderData: sliderData, textFieldData: textFieldData)
            
        }
        

        // Do any additional setup after loading the view.
    }
    
    func updateUI(labelData : String? , sliderData : Float? , textFieldData : String?){
        secondLabel.text = labelData
        secondSlider.value = sliderData ?? 0
        secondTextfield.text = textFieldData
        
    }
    

   




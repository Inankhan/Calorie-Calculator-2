//
//  ViewController.swift
//  Calorie Calculator 2
//
//  Created by Inan Khan on 5/9/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var display: UITextView!
    
    
    var sex = "male"
    var bmr = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeSegment(_ sender: UISegmentedControl){
        if sender.selectedSegmentIndex == 0{
            sex = "male"
        }
        else if sender.selectedSegmentIndex == 1{
            sex = "female"
        }
    }
        
    
    @IBAction func sedentary(_ sender: UIButton) {
        bmr = 1.2
        sender.backgroundColor = UIColor.darkGray
    }
    @IBAction func light(_ sender: UIButton) {
        bmr = 1.35
        sender.backgroundColor = UIColor.darkGray
    }
    @IBAction func moderate(_ sender: UIButton) {
        bmr = 1.5
        sender.backgroundColor = UIColor.darkGray
    }
    @IBAction func intense(_ sender: UIButton) {
        bmr = 1.6
        sender.backgroundColor = UIColor.darkGray
    }
    @IBAction func hard(_ sender: UIButton) {
        bmr = 1.75
        sender.backgroundColor = UIColor.darkGray
    }
    
    
    
    @IBAction func Calculate(_ sender: Any) {
        let textAge = age.text ?? ""
        let doubleAge = Double(textAge) ?? 0.0
        
        let textWeight = weight.text ?? ""
        let doubleWeight = Double(textWeight) ?? 0.0
        
        let textHeight = height.text ?? ""
        let doubleHeight = Double(textHeight) ?? 0.0
        
        var calories = 0.0
        
        if sex == "male"{
            calories = 13.397*doubleWeight + 4.799*doubleHeight - 5.677*doubleAge + 88.362
        }
        
        else if sex == "female"{
            calories = 9.247*doubleWeight + 3.098*doubleHeight - 4.33*doubleAge + 447.593
        }
        
        let totalcal = calories * bmr

        display.text = String(format:"Your daily caloric intake should be: %d kcals", Int(totalcal))
        display.font = UIFont(name: "Menlo", size: 18)
        display.textAlignment = .center

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            age.resignFirstResponder()
            weight.resignFirstResponder()
            height.resignFirstResponder()

        }
}



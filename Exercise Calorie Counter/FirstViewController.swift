//
//  FirstViewController.swift
//  Exercise Calorie Counter
//
//  Created by Jackson Hindes on 4/9/22.
//

import Foundation
import UIKit
var userAge: Double?
var userWeight: Double?
var userGender: String = "Female"


class FirstViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var yourAge: UITextField!
    
    @IBOutlet weak var yourWeight: UITextField!

    @IBOutlet weak var genderButton: UISegmentedControl!
    
    @IBAction func genderButton(_ sender: Any) {
        
        switch genderButton.selectedSegmentIndex {
        case 0:
          userGender = "Female"
        case 1:
          userGender = "Male"
        default:
           return
               }

    }
    
    @IBAction func savePersonalInfo(_ sender: Any) {
        
        userWeight = Double(yourWeight.text!)
        userAge = Double(yourAge.text!)

    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.yourWeight.resignFirstResponder()
        self.yourAge.resignFirstResponder()
        return true
    }

}

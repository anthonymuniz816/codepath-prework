//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Anthony Muñiz on 1/6/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MorePetsStepper: UIStepper!
    
    @IBOutlet weak var MorePetsSwitch: UISwitch!
    
    @IBOutlet weak var FirstNameTextField: UITextField!
    
    @IBOutlet weak var LastNameTextField: UITextField!
    
    @IBOutlet weak var SchoolNameTextField: UITextField!
    
    @IBOutlet weak var YearSegmentedControl: UISegmentedControl!
    
    
    @IBOutlet weak var NumberOfPetsLabel: UILabel!
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        NumberOfPetsLabel.text = "\(Int(sender.value))"
    }
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        let Year = YearSegmentedControl.titleForSegment(at: YearSegmentedControl.selectedSegmentIndex)
        
        let introduction = "My name is \(FirstNameTextField.text!) \(LastNameTextField.text!) and I attend \(SchoolNameTextField.text!). I am currently in my \(Year!) year and I own \(NumberOfPetsLabel.text!) dogs. It is \(MorePetsSwitch.isOn) that I want more pets. "
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
                
                
                let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
                
                
                alertController.addAction(action)
                
                present(alertController, animated: true, completion: nil)
    }
        
        

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.systemBlue     // Do any additional setup after loading the view.
    }


}


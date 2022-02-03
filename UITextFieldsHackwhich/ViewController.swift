//
//  ViewController.swift
//  UITextFieldsHackwhich
//
//  Created by isa fontana on 2/3/22.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate, UITextFieldDelegate {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func actionButtonTapped(_ sender: UIButton) {
        nameLabel.text = nameTextField.text
        nameTextField.resignFirstResponder()
    }
    
    @IBAction func primaryActionTriggered(_ sender: UITextField) {
        nameLabel.text = nameTextField.text
        nameTextField.resignFirstResponder()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
        // Do any additional setup after loading the view.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameLabel.text = nameTextField.text
        nameTextField.resignFirstResponder()
        return true
    }

}


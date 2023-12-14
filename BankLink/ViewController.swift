//
//  ViewController.swift
//  BankLink
//
//  Created by Diego Cortes on 10/12/23.
//

import UIKit

let credentials = [
    "username": "user1",
    "password": "password1"
]

class ViewController: UIViewController {
    @IBOutlet weak var Username: UITextField!
    
    @IBOutlet weak var Password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func LogIn(_ sender: Any) {
        // Get the entered username and password from the text fields
        guard let enteredUsername = Username.text,
              let enteredPassword = Password.text else {
            return
        }

        // Validate the entered credentials
        if enteredUsername == credentials["username"] && enteredPassword == credentials["password"] {
            // Perform the segue with the identifier "Menu"
            performSegue(withIdentifier: "Menu", sender: self)
        } else {
            // Display an error message or handle unsuccessful login
            print("Invalid credentials. Please try again.")
        }
    }
    
}


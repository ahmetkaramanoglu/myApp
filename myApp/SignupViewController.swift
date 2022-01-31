//
//  SignupViewController.swift
//  myApp
//
//  Created by Ahmet Karamanoğlu on 29.01.2022.
//

import UIKit

class SignupViewController: UIViewController {
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var usernameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    var name = ""
    var username = ""
    var password = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signupClicked(_ sender: Any) {
        name = nameText.text!
        username = usernameText.text!
        password = passwordText.text!
        UserDefaults.standard.set(name, forKey: "name")
        UserDefaults.standard.set(username, forKey: "username")
        UserDefaults.standard.set(password, forKey: "password")
        
        nameText.text = ""
        usernameText.text = ""
        passwordText.text = ""

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as? ViewController
        destinationVC?.myUsernameArray[0] = UserDefaults.standard.object(forKey: "name") as! String
        destinationVC?.myPasswordArray[0] = UserDefaults.standard.object(forKey: "password") as! String

        
    }
    
   
   
}

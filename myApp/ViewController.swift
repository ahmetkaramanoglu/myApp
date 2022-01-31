//
//  ViewController.swift
//  myApp
//
//  Created by Ahmet Karamanoğlu on 29.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    var myUsernameArray : [String] = ["",""]
    var myPasswordArray : [String] = ["",""]
    
//    let name = UserDefaults.standard.value(forKey: "name")!
//    let username = UserDefaults.standard.value(forKey: "username")!
//    let password = UserDefaults.standard.value(forKey: "password")!
    
//    let storedName = UserDefaults.standard.object(forKey: "name")
//    let storedUsername = UserDefaults.standard.object(forKey: "username")
//    let storedPassword = UserDefaults.standard.object(forKey: "password")
//
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad func called")
        
    }
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear func called")
    }
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear func called")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }

    @IBAction func loginClicked(_ sender: Any) {
//        if let ousername = storedName as? String {
//            if let opassword = storedPassword as? String {
//
//            }
//        }
        if myUsernameArray[0] == usernameText.text! && myPasswordArray[0] == passwordText.text! {
            performSegue(withIdentifier: "toMenuVC", sender: nil)
        }

        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if  segue.identifier == "toMenuVC" {
//            let destinationVC = segue.destination as! MenuViewController
//            //destinationVC.nameLabel.text = "Hoşgeldiniz, \(storedName!)"
//        }
    }
    
    @IBAction func signupClicked(_ sender: Any) {
        performSegue(withIdentifier: "toSignupVC", sender: nil)
        
    }
    
    
    
}


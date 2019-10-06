//
//  LoginViewController.swift
//  Assignment
//
//  Created by Tsztung Wong on 6/10/2019.
//  Copyright © 2019 16219007. All rights reserved.
//

import UIKit
import Alamofire

class LoginViewController: UIViewController {

    @IBOutlet var userid: UITextField!
    @IBOutlet var password: UITextField!
    @IBAction func loginButtonClicked(_ sender: Any) {
        let parameters : Parameters = ["userid": userid.text!, "password": password.text!]
        
        Alamofire.request("https://shrouded-temple-80031.herokuapp.com/user/login", method: .post, parameters: parameters)
            .responseString { response in
                print("Response String: \(response.result.value ?? "No data")")
                
                let alertController = UIAlertController(title: "Title", message: response.result.value, preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
                
                self.present(alertController, animated: true, completion: nil)
                
                UserDefaults.standard.set(self.userid.text!, forKey: "userid")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

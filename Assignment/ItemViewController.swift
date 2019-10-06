//
//  ItemViewController.swift
//  Assignment
//
//  Created by Tsztung Wong on 6/10/2019.
//  Copyright © 2019 16219007. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {

    @IBOutlet var displayId: UILabel!
    @IBAction func logout(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: "userid")
        
        displayId.text = "Please login first!!"
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        displayId.text = UserDefaults.standard.string(forKey: "userid") ?? "Please login first!!"
        
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

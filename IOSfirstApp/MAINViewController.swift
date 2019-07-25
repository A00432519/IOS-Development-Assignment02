//
//  MAINViewController.swift
//  IOSfirstApp
//
//  Created by Sidharth Bhalla on 2019-07-13.
//  Copyright © 2019 Sidharth Bhalla. All rights reserved.
//

import UIKit

class MAINViewController: UIViewController {
    
    // MARK: - IBOutlets

    @IBOutlet weak var gameButton: UIButton!
    
    @IBOutlet weak var noButton: UIButton!
    
   
    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
    

        // Do any additional setup after loading the view.
    }
    
    @IBAction func gameButtonAction(_ sender: UIButton) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let ViewController = storyboard.instantiateViewController(withIdentifier: "GamingController")
//        present(ViewController, animated: true, completion: nil)
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

//
//  WondersDetailsViewController.swift
//  IOSfirstApp
//
//  Created by Sidharth Bhalla on 2019-07-25.
//  Copyright © 2019 Sidharth Bhalla. All rights reserved.
//

import UIKit

class WondersDetailsViewController: UIViewController {

    @IBOutlet weak var detaillabel: UILabel!
    
    @IBOutlet weak var Image: UIImageView!
    @IBOutlet weak var Description: UITextView!
    var name = ""
    var myImageURL:URL!;
    //var description_str: String? = ""
    //var userRating: Double
   // var imageURL: String = ""
    //var coordinates: [Double]
    var wondersDetail: [Wonders] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        name = wondersDetail[0].name
        detaillabel.text = name
        let description = wondersDetail[0].description
        print(description)
        if description == nil {
            Description.text = "No Description Available"
            print(Description.text)
        }
        else{
            Description.text = wondersDetail[0].description
        }
        
        myImageURL = URL(string: wondersDetail[0].imageURL)
        downloaded(from: myImageURL)
        //description_str = wondersDetail[1].description
        //userRating = String(wondersDetail[0].userRating)
        //imageURL = wondersDetail[2].imageURL
        //coordinates = String(wondersDetail[0].coordinates[0]) + " : " + String(wondersDetail[0].coordinates[1])
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
    
    func downloaded(from url: URL, contentMode mode: UIView.ContentMode = .scaleAspectFit) {  // for swift 4.2 syntax just use ===> mode: UIView.ContentMode
        //contentMode = mode
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
                else { return }
            DispatchQueue.main.async() {
                self.Image.image = image
            }
            }.resume()
    }


}

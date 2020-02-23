//
//  SecondScreen.swift
//  OutfitDesigner
//
//  Created by Lexi Burroughs on 2/22/20.
//  Copyright © 2020 Lexi Burroughs. All rights reserved.
//


import UIKit

class SecondScreen: UIViewController {

    @IBOutlet weak var myImage: UIImageView!
    
    var temperature: Int!
    var image: UIImage? {
        if (temperature >= 80){
            return UIImage(named: "hot.jpg")
        }
        if (temperature<80 && temperature>=65){
            return UIImage(named: "warm.jpg")
        }
        if (temperature<65 && temperature>=50){
            return UIImage(named: "normal.jpg")
        }
        if (temperature<50 && temperature>=35){
            return UIImage(named: "cold.jpg")
        }
        if (temperature<35){
            return UIImage(named: "test.jpg")
        }
        return UIImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myImage.image = image
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

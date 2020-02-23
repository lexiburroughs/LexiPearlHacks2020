//
//  ViewController.swift
//  OutfitDesigner
//
//  Created by Lexi Burroughs on 2/22/20.
//  Copyright © 2020 Lexi Burroughs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var pleaseenter: UILabel!
    @IBOutlet weak var userInput: UITextField!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        temp()
        // Do any additional setup after loading the view.
    }
    func temp(){
        pleaseenter.text="Please enter your local temperature: "
        pleaseenter.sizeToFit()
        var a = 0
       
    }
    
    @IBAction func outfitButton(_ sender: Any) {
        showImageViewControllewr()
    }
        
    
    
    private func showImageViewControllewr() {
        let temp = Int(userInput?.text ?? "0")
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let imageViewController = storyboard.instantiateViewController(identifier: "imageScreen") as! SecondScreen
        imageViewController.temperature = temp
        present(imageViewController, animated: false, completion: nil)
        
    }
    

}

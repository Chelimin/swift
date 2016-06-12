//
//  ViewController.swift
//  HelloWorld
//
//  Created by He Limin on 11/6/16.
//  Copyright © 2016 Cat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var name=""

    @IBOutlet weak var helloDes: UILabel!
    
    @IBOutlet weak var helloText: UITextField!
    
    @IBOutlet weak var helloLabel: UILabel!
    
    @IBAction func helloButton(sender: AnyObject) {
//        helloLabel.text = helloText.text
//        helloLabel.text = String(sender.tag)
        helloLabel.text = arrayFood[sender.tag]
        helloDes.text = arrayDes[sender.tag]
        
        name = arrayFood[sender.tag]
        
            }
    
    
    var arrayFood = ["Chicken rice", "Chilli crab", "Laksa", "Nasi Lemak"]
    var arrayDes = ["Chicken with rice", "Chilli with crab", "Noodles with curry","Coconut rice"]
    var arrayImg = ["chickenrice", "chillicrab","laksa","nasilemak"]
    //just img names will do, prog will find images in files!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "My App"
        
        print("this works")
        helloLabel.text = "hello world"
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        guard let tagIndex = sender?.tag else{
            return
        }
        
        let destinationVC = segue.destinationViewController as? DetailsViewController
        
//        destinationVC?.foodName  = name
        destinationVC?.foodName = arrayFood[tagIndex]
        destinationVC?.foodDes = arrayDes[tagIndex]
        destinationVC?.foodImgName = arrayImg[tagIndex]
        
    }


}


//
//  DetailsViewController.swift
//  HelloWorld
//
//  Created by He Limin on 11/6/16.
//  Copyright © 2016 Cat. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    var foodName: String?
    var foodDes: String?
    var foodImgName: String?
    
    @IBOutlet weak var foodNameLabel: UILabel!
    
    @IBOutlet weak var foodThumbImage: UIImageView!
    
    
    @IBOutlet weak var foodDesTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodNameLabel.text = foodName!
        foodDesTextView.text = foodDes!
        foodThumbImage.image = UIImage(named: foodImgName!)
    
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

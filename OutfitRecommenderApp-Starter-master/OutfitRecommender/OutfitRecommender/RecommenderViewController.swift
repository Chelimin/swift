//
//  RecommenderViewController.swift
//  OutfitRecommender
//
//  Created by He Limin on 27/5/16.
//  Copyright © 2016 MakeSchool. All rights reserved.
//

import UIKit

class RecommenderViewController: UIViewController {

    @IBOutlet weak var bottomImageView: UIImageView!
    
    
    @IBOutlet weak var topImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func onRecommendButtonTap(sender: UIButton) {
        
        let (top, bottom) = outfitRecommender.findPossibleOutfit()
        
        let bottomImage = UIImage(named: bottom)
        
        let topImage = UIImage(named: top)
        
        bottomImageView.image = bottomImage
        topImageView.image = topImage
        
        print("You shoud wear: \(top) and \(bottom)")
        
    }


}

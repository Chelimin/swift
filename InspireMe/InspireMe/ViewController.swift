//
//  ViewController.swift
//  InspireMe
//
//  Created by He Limin on 3/6/16.
//  Copyright © 2016 Cat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet weak var authorLabel: UILabel!
    let quoteGenerator = QuoteGenerator()

    override func viewDidLoad() {
        super.viewDidLoad()
        Label.text = "Hello"
    
        let quoteA = Quote(quote: "Hello", author: "Cat")
        
        quoteGenerator.quotes.append(quoteA)
        
    }

    @IBAction func onInspireButtonTap(sender: UIButton) {
        
       guard let randomQuote =
        
        quoteGenerator.generateRandomQuote() else{
            Label.text = "No quotes, mate"
            return
        }
        
        Label.text = randomQuote.quote
        authorLabel.text = randomQuote.author
    
    }
    
   
}



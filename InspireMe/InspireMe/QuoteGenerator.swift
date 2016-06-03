//
//  QuoteGenerator.swift
//  InspireMe
//
//  Created by He Limin on 3/6/16.
//  Copyright © 2016 Cat. All rights reserved.
//

import Foundation

class QuoteGenerator{
    //output some random quote
    
    var quotes: [Quote] = []
    
    //Methods (optionals, so that if not found app won't crash)
    
    func generateRandomQuote() -> Quote? {
        
        guard !quotes.isEmpty else{
            return nil
        }
        
        let randomIndex = Int(arc4random_uniform(UInt32(quotes.count)))
        
        let randomQuote = quotes[randomIndex]
        
        return randomQuote
        
    }
    
}
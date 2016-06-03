//: Playground - noun: a place where people can play

enum EventType{
    
    case Formal
    case Casual
    case Sports
}

import Foundation

class OutfitRecommender{
    var eventType: EventType
    var tops: [EventType: [String]] = [:]
    
    var bottoms: [EventType: [String]] = [:]
    
    init(eventType: EventType){
        self.eventType = eventType
        tops[.Formal] = ["Tuxedo", "Tie", "Gown"]
        tops[.Casual] = ["T-Shirt", "Tops", "Hoodies"]
        tops[.Sports] = ["Jersey","Drifit"]
        
        bottoms[.Formal] = ["Long Pants", "Long Skirt"]
        bottoms[.Casual] = ["Jeans", "Pants"]
        bottoms[.Sports] = ["Shorts","Leggings"]
    }
    
    func getPossibleTops() -> [String]{
        
        guard let possibleTops = tops[eventType] else{
            return[]
        }
        
        return possibleTops
        
    }
    
    func getPossibleBottoms() -> [String]{
        guard let possibleBottoms = bottoms[eventType] else{
            return[]
        }
        
        return possibleBottoms
        
    }
    
    
//    returns a random number from zero to given max
    func getRandomNumberFromZeroTo(max: Int) -> Int {
        
        let randomNumber = Int(arc4random_uniform(UInt32(max)))
        
        return randomNumber
    }
    
    func getOutfitRecommendation(){
        
        let possibleTops = getPossibleTops()
        let randomPossibleTopIndex =
            getRandomNumberFromZeroTo(possibleTops.count)
        let possibleTop = possibleTops[randomPossibleTopIndex]
    
        let possibleBottoms = getPossibleBottoms()
        let randomPossibleBottomIndex =
        getRandomNumberFromZeroTo(possibleBottoms.count)
        let possibleBottom = possibleBottoms[randomPossibleBottomIndex]
        
        let resultString = "I recommend you to wear \(possibleTop) and \(possibleBottom)"

        print(resultString)
    }
    
}

let outfitRecommender = OutfitRecommender(eventType: .Casual)
//let possibleTops = outfitRecommender.getPossibleTops()
//print(possibleTops)

//let possibleBottoms = outfitRecommender.getPossibleBottoms()
//print(possibleBottoms)

outfitRecommender.getOutfitRecommendation()

import UIKit

var str = "Hello, playground"

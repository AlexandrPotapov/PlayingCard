//
//  PlayingCardDeck.swift
//  PlayingCard
//
//  Created by Alexander on 25.07.2022.
//

import Foundation

struct PlayingCardDeck {
    private(set) var cards = [PlayingCard]()
    
    init() {
        for suit in PlayingCard.Suit.allCases {
            for rank in PlayingCard.Rank.all {
                cards.append(PlayingCard(suit: suit, rank: rank))
            }
        }
    }
    
    mutating func draw() -> PlayingCard? {
        if cards.count > 0 {
            return cards.remove(at: cards.count.arc4random)
        } else {
            return nil
        }
    }
}

extension Int {
   var arc4random: Int {
       if self > 0 {
           return Int.random(in: 0..<self)
       } else if self < 0 {
           return -Int.random(in: 0..<abs(self))
       } else {
           return 0
       }
   }
}

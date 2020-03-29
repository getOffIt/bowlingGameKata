//
//  Game.swift
//  bowling
//
//  Copyright © 2020 non. All rights reserved.
//

import Foundation

class Game {
    var theScore = 0

    func roll(_ pins: Int) {
        theScore += pins
    }

    func score() -> Int {
        return theScore
    }
}

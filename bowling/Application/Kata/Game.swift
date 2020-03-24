//
//  Game.swift
//  bowling
//
//  Created by Antoine Rabanes on 24/03/2020.
//  Copyright © 2020 non. All rights reserved.
//

import Foundation

class Game {
    private var currentScore = 0

    func roll(_ pins: Int) {
        currentScore += pins
    }

    func score() -> Int {
        return currentScore
    }
}

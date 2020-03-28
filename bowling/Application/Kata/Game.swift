//
//  Game.swift
//  bowling
//
//  Created by Antoine Rabanes on 24/03/2020.
//  Copyright © 2020 non. All rights reserved.
//

import Foundation

struct Frame {
    var firstRoll: Int = 0
    var secondRoll: Int = 0
}

class Game {
    private var currentScore = 0
    private var frameIndex = 0
    private var frames = [Frame]()

    init() {
        for _ in 1...20 {
            let frame = Frame()
            frames.append(frame)
        }
    }

    func roll(_ pins: Int) {
        var frame = frames[frameIndex]
        frame.firstRoll = pins
        frames[frameIndex] = frame
        frameIndex += 1
    }

    func score() -> Int {
        var theScore: Int = 0
        for frame in frames {
            theScore += frame.firstRoll
            theScore += frame.secondRoll
        }
        return theScore
    }
}

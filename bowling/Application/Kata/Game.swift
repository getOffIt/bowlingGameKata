//
//  Game.swift
//  bowling
//
//  Copyright © 2020 non. All rights reserved.
//

import Foundation

class Frame {
    private var rollOne = 0
    private var rollOneScored = false
    private var rollTwoScored = false
    private var rollTwo = 0
    var frameFinished: Bool {
        return rollOneScored && rollTwoScored
    }

    func score(pins: Int) {
        if !rollOneScored {
            rollOne = pins
            rollOneScored = true
            return
        }
        rollTwo = pins
        rollTwoScored = true
    }
    var frameScore: Int {
        return rollOne + rollTwo
    }
}

class Game {
    private var rolls: [Frame] = Array(repeating: Frame(), count: 10)
    private var frameIndex = 0

    func roll(_ pins: Int) {
        let frame = rolls[frameIndex]
        frame.score(pins: pins)
        if frame.frameFinished {
            frameIndex += 1
        }
    }

    func score() -> Int {
        var retVal = 0
        for frame in rolls {
            retVal += frame.frameScore
        }
        return retVal
    }
}

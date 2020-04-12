//
//  Game.swift
//  bowling
//
//  Copyright © 2020 non. All rights reserved.
//

import Foundation

class Frame {
    var rollOne = 0
    private var rollOneScored = false
    private var rollTwoScored = false
    private var rollTwo = 0
    var frameFinished: Bool {
        return rollOneScored && rollTwoScored
    }
    var isSpare: Bool {
        if rollOne + rollTwo == 10 {
            return true
        }
        return false
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
    private var rolls: [Frame]
    private var frameIndex = 0

    init() {
        rolls = Array()
        for _ in 1...10 {
            let frame = Frame()
            rolls.append(frame)
        }
    }

    func roll(_ pins: Int) {
        let frame = rolls[frameIndex]
        frame.score(pins: pins)
        if frame.frameFinished {
            frameIndex += 1
        }
    }

    func score() -> Int {
        var retVal = 0
        var counter = 0
        for frame in rolls {
            retVal += frame.frameScore
            if frame.isSpare {
                // no extra points for last frame
                if counter != 9 {
                    // add spare Bonus points to scoring
                    retVal += rolls[counter + 1].rollOne
                }
            }
            counter += 1
        }
        return retVal
    }
}

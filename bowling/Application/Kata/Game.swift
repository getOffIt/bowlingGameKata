//
//  Game.swift
//  bowling
//
//  Created by Antoine Rabanes on 24/03/2020.
//  Copyright © 2020 non. All rights reserved.
//

import Foundation

class Frame {
    var firstRoll: Int = 0
    var secondRoll: Int = 0
    var firstRollPlayed = false
    var finished = false
    private let kSpare = 10
    var rollScore: Int {
        return firstRoll + secondRoll
    }
    func isSpare() -> Bool {
        if firstRoll + secondRoll == 10 {
            return true
        }
        return false
    }
    func isStrike() -> Bool {
        if firstRoll == 10 {
            return true
        }
        return false
    }

    func roll(_ pins: Int) {
        if !firstRollPlayed {
            firstRoll = pins
            firstRollPlayed = true
        } else {
            secondRoll = pins
            finished = true
        }
    }
}

class Game {
    private var currentScore = 0
    private var frameIndex = 0
    private var frames = [Frame]()
    private var bonusFrame = Frame()
    init() {
        for _ in 1...11 {
            let frame = Frame()
            frames.append(frame)
        }
    }

    func roll(_ pins: Int) {
        if frameIndex == 10 { // Bonus
            bonusFrame.roll(pins)
            return
        }
        let frame = frames[frameIndex]
        frame.roll(pins)
        frames[frameIndex] = frame
        if frame.isStrike() {
            frameIndex += 1
        }
        if frame.finished {
            frameIndex += 1
        }
    }

    func score() -> Int {
        var finalScore = 0
        var cpt = 0
        while cpt < frames.count {
            let frame = frames[cpt]
            var frameScore = frame.rollScore
            if frame.isStrike() {
                frameScore += strikeBonus(cpt + 1)
            } else if frame.isSpare() {
                frameScore += spareBonus(cpt + 1)
            }
            finalScore += frameScore
            cpt += 1
        }
        return finalScore + bonusFrame.rollScore
    }

    fileprivate func spareBonus(_ cpt: Int) -> Int {
        return frames[cpt].firstRoll
    }

    fileprivate func strikeBonus(_ cpt: Int) -> Int {
        return frames[cpt].rollScore
    }
}

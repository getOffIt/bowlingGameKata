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
    var firstRollPlayed = false
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
}

class Game {
    private var currentScore = 0
    private var frameIndex = 0
    private var frames = [Frame]()
    private let kSpare = 10

    init() {
        for _ in 1...20 {
            let frame = Frame()
            frames.append(frame)
        }
    }

    func roll(_ pins: Int) {
        var frame = frames[frameIndex]
        if !frame.firstRollPlayed {
            frame.firstRoll = pins
            frame.firstRollPlayed = true
            frames[frameIndex] = frame
            if frame.isStrike() {
                frameIndex += 1
            }
        } else {
            frame.secondRoll = pins
            frames[frameIndex] = frame
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
        return finalScore
    }

    fileprivate func spareBonus(_ cpt: Int) -> Int {
        return frames[cpt].firstRoll
    }

    fileprivate func strikeBonus(_ cpt: Int) -> Int {
        return frames[cpt].rollScore
    }
}

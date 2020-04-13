//
//  GameTests.swift
//  bowlingTests
//
//  Copyright © 2020 non. All rights reserved.
//

@testable import bowling
import XCTest

class GameTests: XCTestCase {
    var game = Game()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        game = Game()

    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testGutterGame() {
        for _ in 1...20 {
            game.roll(0)
        }
        XCTAssertEqual(0, game.score())
    }

    func testAllOnes() {
        for _ in 1...20 {
            game.roll(1)
        }

        XCTAssertEqual(20, game.score())
    }

    func testOneSpare() {
        game.roll(5)
        game.roll(5)
        game.roll(1)
        rollMany(pins: 1, times: 17)
        XCTAssertEqual(game.score(), 29)
    }

    func testOneSpareOnLastFrame() {
        rollMany(pins: 1, times: 18)
        game.roll(5)
        game.roll(5)
        game.roll(2)
        XCTAssertEqual(game.score(), 30)
    }

    func testOneStrike() {
        game.roll(10)
        game.roll(5)
        game.roll(4)
        rollMany(pins: 1, times: 17)
        XCTAssertEqual(game.score(), 41)
    }

//    func testOneStrikeOnLastFrame() {
//        game.roll(10)
//        game.roll(5)
//        game.roll(4)
//        rollMany(pins: 1, times: 17)
//        XCTAssertEqual(game.score(), 41)
//    }

    func rollMany(pins: Int, times: Int) {
        for _ in 1...times {
            game.roll(pins)
        }
    }

}

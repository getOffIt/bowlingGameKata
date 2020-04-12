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
//        for _ in 1...20 {
//            game.roll(1)
//        }
        game.roll(1)
        game.roll(2)
        game.roll(3)
        game.roll(4)
        game.roll(5)
        game.roll(6)
        game.roll(7)
        game.roll(8)
        game.roll(9)
        game.roll(10)
        game.roll(11)
        game.roll(12)
        game.roll(13)
        game.roll(14)
        game.roll(15)
        game.roll(16)
        game.roll(17)
        game.roll(18)
        game.roll(19)
        game.roll(20)
        XCTAssertEqual(20, game.score())
    }

    func testOneSpare() {
        game.roll(5)
        game.roll(5)
        game.roll(1)
        rollMany(pins: 1, times: 17)
        XCTAssertEqual(29, game.score())
    }

    func rollMany(pins: Int, times: Int) {
        for _ in 1...times {
            game.roll(pins)
        }
    }

}

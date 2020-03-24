//
//  GameTests.swift
//  bowlingTests
//
//  Created by Antoine Rabanes on 24/03/2020.
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
        rollMany(rolls: 20, pins: 0)
        XCTAssertTrue(game.score() == 0)
    }

    func testAllOnes() {
        rollMany(rolls: 20, pins: 1)
        XCTAssertTrue(game.score() == 20)
    }

    func rollMany(rolls: Int, pins: Int) {
        for _ in 1...rolls {
            game.roll(pins)
        }
    }
}
